part of prediction_v1_4_api;

class HostedmodelsResource_ {

  final Client _client;

  HostedmodelsResource_(Client client) :
      _client = client;

  /**
   * Submit input and request an output against a hosted model.
   *
   * [request] - Input to send in this request
   *
   * [hostedModelName] - The name of a hosted model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Output> predict(Input request, core.String hostedModelName, {core.Map optParams}) {
    var url = "hostedmodels/{hostedModelName}/predict";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (hostedModelName == null) paramErrors.add("hostedModelName is required");
    if (hostedModelName != null) urlParams["hostedModelName"] = hostedModelName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Output.fromJson(data));
  }
}

class TrainedmodelsResource_ {

  final Client _client;

  TrainedmodelsResource_(Client client) :
      _client = client;

  /**
   * Delete a trained model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "trainedmodels/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Check training status of your model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Training> get(core.String id, {core.Map optParams}) {
    var url = "trainedmodels/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Training.fromJson(data));
  }

  /**
   * Begin training your model.
   *
   * [request] - Training to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Training> insert(Training request, {core.Map optParams}) {
    var url = "trainedmodels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Training.fromJson(data));
  }

  /**
   * Submit model id and request a prediction
   *
   * [request] - Input to send in this request
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Output> predict(Input request, core.String id, {core.Map optParams}) {
    var url = "trainedmodels/{id}/predict";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Output.fromJson(data));
  }

  /**
   * Add new data to a trained model.
   *
   * [request] - Update to send in this request
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Training> update(Update request, core.String id, {core.Map optParams}) {
    var url = "trainedmodels/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Training.fromJson(data));
  }
}

