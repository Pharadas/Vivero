import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

/// FormController is a class which does work of saving FeedbackForm in Google Sheets using
/// HTTP GET request on Google App Script Web URL and parses response and sends result callback.
class FormController {
  // Callback function to give response of status of current request.
  final void Function(String) callback;

  // Google App Script Web URL.
  static const String URL = "https://script.google.com/macros/s/AKfycbxRN7xfEbzSoUF00xoA8_BWZN8hAM9HWYq-yeMJgCYuaQB-KNI/exec";

  // Success Status Message
  static const STATUS_SUCCESS = "SUCCESS";

  // Default Contructor
  FormController(this.callback);

  /// Async function which saves feedback, parses [feedbackForm] parameters
  /// and sends HTTP GET request on [URL]. On successful response, [callback] is called.
  void submitForm(FeedbackForm feedbackForm) async {
    try {
      await http.get(
          URL + feedbackForm.toParams()).then((response){
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (request) {
      print(request);
    }
  }
}

/// FeedbackForm is a data class which stores data fields of Feedback.
class FeedbackForm {
  String _treeid;
  String _treetype;
  String _imagetree;
  String _ground;
  String _trunk;
  String _height;
  String _top;
  String _diameter;
  String _longevity;
  String _recolection;
  String _spread;
  String _seed;
  String _seedimage;
  String _seedtreatment;
  String _action;

  FeedbackForm(this._treeid, this._treetype, this._imagetree, this._ground, this._trunk, this._height, this._top, this._diameter, this._longevity, this._recolection, this._spread, this._seed, this._seedimage, this._seedtreatment, this._action);

  // Method to make GET parameters.
  String toParams() =>
      "?treeid=$_treeid&treetype=$_treetype&imagetree=$_imagetree&ground=$_ground&trunk=$_trunk&height=$_height&top=$_top&diameter=$_diameter&longevity=$_longevity&recolection=$_recolection&spread=$_spread&seed=$_seed&seedimage=$_seedimage&seedtreatment=$_seedtreatment&action=$_action";
}