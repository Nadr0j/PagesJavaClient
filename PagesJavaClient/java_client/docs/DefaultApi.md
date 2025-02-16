# DefaultApi

All URIs are relative to *http://pages.beta.jws.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**pagesGetPagePost**](DefaultApi.md#pagesGetPagePost) | **POST** /pages/getPage | Gets a page. |
| [**pagesWritePagePost**](DefaultApi.md#pagesWritePagePost) | **POST** /pages/writePage | Writes a page. |


<a id="pagesGetPagePost"></a>
# **pagesGetPagePost**
> GetPageResponse pagesGetPagePost(getPageRequest)

Gets a page.

Returns a previously written page based on user, namespace, and page name.

### Example
```java
// Import classes:
import com.example.pagesclient.ApiClient;
import com.example.pagesclient.ApiException;
import com.example.pagesclient.Configuration;
import com.example.pagesclient.models.*;
import com.example.pagesclient.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://pages.beta.jws.com");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    GetPageRequest getPageRequest = new GetPageRequest(); // GetPageRequest | Request body containing user, namespace, and page name.
    try {
      GetPageResponse result = apiInstance.pagesGetPagePost(getPageRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#pagesGetPagePost");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **getPageRequest** | [**GetPageRequest**](GetPageRequest.md)| Request body containing user, namespace, and page name. | |

### Return type

[**GetPageResponse**](GetPageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully fetches a page. |  -  |
| **400** | Invalid input, object invalid. |  -  |
| **404** | Page not found. |  -  |
| **500** | Internal server error. |  -  |

<a id="pagesWritePagePost"></a>
# **pagesWritePagePost**
> WritePageResponse pagesWritePagePost(writePageRequest)

Writes a page.

Writes a new page or updates an existing page based on user, namespace, and page name.

### Example
```java
// Import classes:
import com.example.pagesclient.ApiClient;
import com.example.pagesclient.ApiException;
import com.example.pagesclient.Configuration;
import com.example.pagesclient.models.*;
import com.example.pagesclient.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://pages.beta.jws.com");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    WritePageRequest writePageRequest = new WritePageRequest(); // WritePageRequest | Request body containing user, namespace, page name, and content.
    try {
      WritePageResponse result = apiInstance.pagesWritePagePost(writePageRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#pagesWritePagePost");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **writePageRequest** | [**WritePageRequest**](WritePageRequest.md)| Request body containing user, namespace, page name, and content. | |

### Return type

[**WritePageResponse**](WritePageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully written or updated a page. |  -  |
| **400** | Invalid input, object invalid. |  -  |
| **409** | Page already exists and overwriteExisting is false |  -  |
| **500** | Internal server error. |  -  |

