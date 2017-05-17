.class public Lcom/sonyericsson/conversations/location/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertBase64ToBinary(Ljava/lang/String;)[B
    .locals 2
    .param p0, "keyString"    # Ljava/lang/String;

    .prologue
    .line 103
    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 104
    const/16 v0, 0x5f

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static createStaticMapUrl(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/16 v7, 0x26

    const/16 v6, 0x3d

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "https://maps.googleapis.com/maps/api/staticmap"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "urlString":Ljava/lang/StringBuilder;
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    const-string/jumbo v3, "640x640"

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    const-string/jumbo v3, "markers"

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 168
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    const/16 v3, 0x2c

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 168
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    const-string/jumbo v3, "format"

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const-string/jumbo v3, "jpg"

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const-string/jumbo v3, "key"

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 174
    const v4, 0x7f0b02b9

    .line 173
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->signMapURLWithSecretKey(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Unable to sign map url with secret key"

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static generateLocationPicFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const-string/jumbo v2, "\'location_\'yyyy\'-\'MM\'-\'dd\'_\'kkmm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "filename":Ljava/lang/String;
    const-string/jumbo v2, ".jpg"

    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    return-object v1
.end method

.method public static generateUrlPrefix(DD)Ljava/lang/String;
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 187
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "http://maps.google.com/maps?f=q&geocode=&q=%.4f,%.4f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 188
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 187
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationPicFromLatLng(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 217
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->createStaticMapUrl(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "staticMapUrl":Ljava/lang/String;
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_0

    .line 219
    const-string/jumbo v6, "Generated static map url is"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 221
    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 222
    .local v4, "staticMapURL":Ljava/net/URL;
    invoke-static {p0}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->generateLocationPicFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "fileName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 224
    .local v3, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v3, v2}, Lcom/sonyericsson/conversations/util/ImageHandler;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 226
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v8

    .line 227
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v6, v7

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    throw v6

    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v6

    if-eqz v7, :cond_3

    if-eq v7, v6, :cond_2

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_1

    .line 226
    :cond_4
    return-object v8

    .line 227
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_3
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    move-object v8, v7

    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_7
    move-object v7, v8

    :cond_8
    :goto_5
    if-eqz v7, :cond_9

    throw v7

    :catch_3
    move-exception v8

    if-eqz v7, :cond_6

    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v7

    goto :goto_4

    :catch_4
    move-exception v7

    if-eqz v8, :cond_8

    if-eq v8, v7, :cond_7

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v8

    goto :goto_5

    :cond_9
    throw v6

    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private static signMapURLWithSecretKey(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mapURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v5, "signedMapUrl":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 133
    const v7, 0x7f0b02ba

    .line 132
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->convertBase64ToBinary(Ljava/lang/String;)[B

    move-result-object v1

    .line 136
    .local v1, "secretKey":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "HmacSHA1"

    invoke-direct {v2, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 139
    .local v2, "sha1Key":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v6, "HmacSHA1"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 140
    .local v0, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 146
    .local v3, "sigBytes":[B
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "signature":Ljava/lang/String;
    const/16 v6, 0x2b

    const/16 v7, 0x2d

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 150
    const/16 v6, 0x2f

    const/16 v7, 0x5f

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 152
    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
