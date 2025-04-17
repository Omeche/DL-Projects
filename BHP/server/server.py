from flask import Flask, request, jsonify
import util

app = Flask(__name__)

@app.route('/get_location_names', methods=['GET'])
def get_location_names():
    try:
        response = jsonify({'locations': util.get_location_names()})
        response.headers.add('Access-Control-Allow-Origin', '*')
        return response
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/predict_prices', methods=['GET', 'POST'])
def predict_prices():
    try:
        if request.method == 'GET':
            sqft = float(request.args.get('sqft', 0))
            location = request.args.get('location', '')
            bedroom = int(request.args.get('bedroom', 0))
            bath = int(request.args.get('bath', 0))
        else:
            sqft = float(request.form.get('sqft', 0))
            location = request.form.get('location', '')
            bedroom = int(request.form.get('bedroom', 0))
            bath = int(request.form.get('bath', 0))

        estimated_price = util.get_estimated_price(location, sqft, bedroom, bath)
        response = jsonify({'estimated price': estimated_price})
        response.headers.add('Access-Control-Allow-Origin', '*')
        return response

    except ValueError:
        return jsonify({'error': 'Invalid input data'}), 400
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    print("Starting python flask server for home prediction...")
    util.load_saved_artifacts()
    app.run(debug=True)
