.class Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "SearchXperiaCareUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/search/SearchXperiaCareUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSomcSearchResultsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;-><init>(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)V

    return-void
.end method

.method private makeHttpRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 28
    .param p1, "urlBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 178
    .local v20, "result":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 179
    .local v12, "inputStream":Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 180
    .local v18, "reader":Ljava/io/BufferedReader;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v22, "sb":Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v17, "postData":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v25, v0

    const-string/jumbo v26, ""

    invoke-static/range {v25 .. v26}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-set0(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    const/4 v10, 0x0

    .line 186
    .local v10, "httpConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "param$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 187
    .local v15, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-eqz v25, :cond_0

    .line 188
    const/16 v25, 0x26

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string/jumbo v26, "utf-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const/16 v25, 0x3d

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "utf-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    .end local v10    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "param$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .line 213
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/net/UnknownHostException;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get3(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Landroid/content/Context;

    move-result-object v25

    .line 214
    const-string/jumbo v26, "connectivity"

    .line 213
    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    .line 215
    .local v14, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 216
    .local v11, "info":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_15

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v25

    if-eqz v25, :cond_15

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get8(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-set0(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    :goto_2
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    if-eqz v18, :cond_1

    .line 238
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15

    .line 243
    :cond_1
    :goto_3
    if-eqz v12, :cond_2

    .line 245
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_16

    .line 250
    :cond_2
    :goto_4
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 254
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v14    # "manager":Landroid/net/ConnectivityManager;
    .end local v20    # "result":Lorg/json/JSONObject;
    :cond_3
    :goto_5
    return-object v20

    .line 194
    .restart local v10    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "param$iterator":Ljava/util/Iterator;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "result":Lorg/json/JSONObject;
    :cond_4
    :try_start_4
    new-instance v24, Ljava/net/URL;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "?"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 195
    .local v24, "url":Ljava/net/URL;
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 196
    .local v10, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    .line 198
    .local v23, "statusCode":I
    const/16 v25, 0xc8

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 199
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 200
    .local v12, "inputStream":Ljava/io/InputStream;
    if-eqz v12, :cond_6

    .line 201
    new-instance v19, Ljava/io/BufferedReader;

    .line 202
    new-instance v25, Ljava/io/InputStreamReader;

    const-string/jumbo v26, "utf-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v12, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v26, 0x8

    .line 201
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    .local v19, "reader":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v18    # "reader":Ljava/io/BufferedReader;
    move-result-object v13

    .line 204
    .local v13, "line":Ljava/lang/String;
    :goto_6
    if-eqz v13, :cond_5

    .line 205
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 208
    :cond_5
    new-instance v21, Lorg/json/JSONObject;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .local v21, "result":Lorg/json/JSONObject;
    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .local v18, "reader":Ljava/io/BufferedReader;
    move-object/from16 v20, v21

    .line 236
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .end local v20    # "result":Lorg/json/JSONObject;
    .end local v21    # "result":Lorg/json/JSONObject;
    :cond_6
    if-eqz v18, :cond_7

    .line 238
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 243
    :cond_7
    :goto_7
    if-eqz v12, :cond_8

    .line 245
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 250
    :cond_8
    :goto_8
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 239
    :catch_1
    move-exception v3

    .line 240
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 233
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v16    # "param$iterator":Ljava/util/Iterator;
    .end local v23    # "statusCode":I
    .end local v24    # "url":Ljava/net/URL;
    .local v18, "reader":Ljava/io/BufferedReader;
    .restart local v20    # "result":Lorg/json/JSONObject;
    :catch_3
    move-exception v5

    .line 234
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 236
    if-eqz v18, :cond_9

    .line 238
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 243
    :cond_9
    :goto_a
    if-eqz v12, :cond_a

    .line 245
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 250
    :cond_a
    :goto_b
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 239
    :catch_4
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 230
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v9

    .line 231
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .local v9, "e":Lorg/json/JSONException;
    :goto_c
    :try_start_b
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 232
    const-string/jumbo v25, "SearchXperiaCareUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error converting result: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 236
    if-eqz v18, :cond_b

    .line 238
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 243
    :cond_b
    :goto_d
    if-eqz v12, :cond_c

    .line 245
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 250
    :cond_c
    :goto_e
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 239
    :catch_7
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 228
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v3

    .line 229
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_f
    :try_start_e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 236
    if-eqz v18, :cond_d

    .line 238
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 243
    :cond_d
    :goto_10
    if-eqz v12, :cond_e

    .line 245
    :try_start_10
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 250
    :cond_e
    :goto_11
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 239
    :catch_a
    move-exception v3

    .line 240
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 246
    :catch_b
    move-exception v3

    .line 247
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 226
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :catch_c
    move-exception v6

    .line 227
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .local v6, "e":Ljava/lang/IllegalStateException;
    :goto_12
    :try_start_11
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 236
    if-eqz v18, :cond_f

    .line 238
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 243
    :cond_f
    :goto_13
    if-eqz v12, :cond_10

    .line 245
    :try_start_13
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 250
    :cond_10
    :goto_14
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 239
    :catch_d
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 224
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :catch_f
    move-exception v7

    .line 225
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .local v7, "e":Ljava/net/MalformedURLException;
    :goto_15
    :try_start_14
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 236
    if-eqz v18, :cond_11

    .line 238
    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    .line 243
    :cond_11
    :goto_16
    if-eqz v12, :cond_12

    .line 245
    :try_start_16
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    .line 250
    :cond_12
    :goto_17
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 239
    :catch_10
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 222
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/net/MalformedURLException;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :catch_12
    move-exception v4

    .line 223
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :goto_18
    :try_start_17
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 236
    if-eqz v18, :cond_13

    .line 238
    :try_start_18
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13

    .line 243
    :cond_13
    :goto_19
    if-eqz v12, :cond_14

    .line 245
    :try_start_19
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_14

    .line 250
    :cond_14
    :goto_1a
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 239
    :catch_13
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 219
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v8    # "e":Ljava/net/UnknownHostException;
    .restart local v11    # "info":Landroid/net/NetworkInfo;
    .restart local v14    # "manager":Landroid/net/ConnectivityManager;
    :cond_15
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get2(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-set0(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_2

    .line 235
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v14    # "manager":Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v25

    .line 236
    :goto_1b
    if-eqz v18, :cond_16

    .line 238
    :try_start_1b
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17

    .line 243
    :cond_16
    :goto_1c
    if-eqz v12, :cond_17

    .line 245
    :try_start_1c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_18

    .line 250
    :cond_17
    :goto_1d
    if-eqz v10, :cond_18

    .line 251
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 235
    :cond_18
    throw v25

    .line 239
    .restart local v8    # "e":Ljava/net/UnknownHostException;
    .restart local v11    # "info":Landroid/net/NetworkInfo;
    .restart local v14    # "manager":Landroid/net/ConnectivityManager;
    :catch_15
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 239
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v14    # "manager":Landroid/net/ConnectivityManager;
    :catch_17
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catch_18
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v10    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "param$iterator":Ljava/util/Iterator;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "statusCode":I
    .restart local v24    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v25

    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .local v18, "reader":Ljava/io/BufferedReader;
    goto :goto_1b

    .line 211
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_19
    move-exception v8

    .restart local v8    # "e":Ljava/net/UnknownHostException;
    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 222
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_1a
    move-exception v4

    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    goto :goto_18

    .line 224
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_1b
    move-exception v7

    .restart local v7    # "e":Ljava/net/MalformedURLException;
    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_15

    .line 226
    .end local v7    # "e":Ljava/net/MalformedURLException;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_1c
    move-exception v6

    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_12

    .line 228
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_1d
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_f

    .line 230
    .end local v3    # "e":Ljava/io/IOException;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_1e
    move-exception v9

    .restart local v9    # "e":Lorg/json/JSONException;
    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 233
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_1f
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v18, v19

    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_9
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 106
    aget-object v7, p1, v12

    .line 107
    .local v7, "query":Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get0()[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 108
    .local v2, "cursor":Landroid/database/MatrixCursor;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v8, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "query"

    aget-object v10, p1, v12

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v9, "lc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v9, "device"

    const-string/jumbo v10, "default"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v9, "build_version"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get10(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->makeHttpRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v6

    .line 116
    .local v6, "object":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v5, v9, :cond_0

    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    aput-object v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v10}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get4(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 120
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 121
    if-eqz v6, :cond_4

    .line 123
    const/4 v5, 0x0

    :goto_1
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v5, v9, :cond_1

    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    aput-object v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 126
    :cond_1
    :try_start_0
    const-string/jumbo v9, "count"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "count":I
    if-nez v1, :cond_3

    .line 129
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v10}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get5(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 130
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 173
    .end local v1    # "count":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    :cond_2
    :goto_2
    return-object v2

    .line 134
    .restart local v1    # "count":I
    .restart local v2    # "cursor":Landroid/database/MatrixCursor;
    :cond_3
    const-string/jumbo v9, "result"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 135
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_2

    .line 136
    const-string/jumbo v9, "result"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 137
    const-string/jumbo v10, "category"

    .line 136
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "category":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "result"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 140
    const-string/jumbo v11, "subject"

    .line 139
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 142
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "result"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 143
    const-string/jumbo v11, "content"

    .line 142
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    .line 145
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v11}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get9(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&topic="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 146
    const-string/jumbo v11, "result"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 147
    const-string/jumbo v12, "topic"

    .line 146
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 145
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v9, v11

    .line 148
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 155
    .end local v0    # "category":Ljava/lang/String;
    .end local v1    # "count":I
    :catch_0
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 157
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    .line 158
    const/4 v2, 0x0

    .local v2, "cursor":Landroid/database/MatrixCursor;
    goto/16 :goto_2

    .line 151
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .local v2, "cursor":Landroid/database/MatrixCursor;
    :catch_1
    move-exception v4

    .line 152
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    .line 154
    const/4 v2, 0x0

    .local v2, "cursor":Landroid/database/MatrixCursor;
    goto/16 :goto_2

    .line 162
    .end local v4    # "e":Lorg/json/JSONException;
    .local v2, "cursor":Landroid/database/MatrixCursor;
    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v5, v9, :cond_5

    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    aput-object v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 166
    :cond_5
    const-string/jumbo v9, ""

    iget-object v10, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v10}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get6(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 167
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    iget-object v10, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v10}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get5(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-set0(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    :cond_6
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v10}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get6(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    .line 171
    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-static {v0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->-get7(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Lcom/android/settings/dashboard/SearchResultsSummary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSomcResultsCursor(Landroid/database/Cursor;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
