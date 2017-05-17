.class Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;
.super Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;
.source "CallerIdContact.java"


# static fields
.field private static final COLUMN_COUNTRY:I = 0x0

.field private static final COLUMN_LOCATION:I = 0x1

.field private static final COLUMN_OPERATOR:I = 0x2

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sonymobile.providers.landownerprovider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const-string/jumbo v0, "content://com.sonymobile.providers.landownerprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->CONTENT_URI:Landroid/net/Uri;

    .line 152
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;-><init>()V

    return-void
.end method

.method public static getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string/jumbo v0, "com.sonymobile.providers.landownerprovider"

    return-object v0
.end method


# virtual methods
.method public computeCityIdDisplayName(ILandroid/text/TextPaint;)Ljava/lang/String;
    .locals 3
    .param p1, "maxLength"    # I
    .param p2, "paintArea"    # Landroid/text/TextPaint;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "displayName":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mLocationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mLocationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mCountryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mOperatorName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->ellipsizeText(ILandroid/text/TextPaint;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    return-object v1
.end method

.method public createNameIdDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method protected ellipsizeText(ILandroid/text/TextPaint;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "maxLength"    # I
    .param p2, "paintArea"    # Landroid/text/TextPaint;
    .param p3, "longLabel"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz p1, :cond_1

    .line 256
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 255
    :cond_1
    if-eqz p2, :cond_0

    .line 258
    int-to-float v0, p1

    .line 259
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 258
    invoke-static {p3, p2, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected implLookup(Landroid/content/ContentResolver;Ljava/lang/CharSequence;I)V
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "strNumber"    # Ljava/lang/CharSequence;
    .param p3, "callType"    # I

    .prologue
    const/4 v3, 0x0

    .line 202
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lookup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mLocationName:Ljava/lang/String;

    .line 207
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mCountryName:Ljava/lang/String;

    .line 208
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mOperatorName:Ljava/lang/String;

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    const/4 v6, 0x0

    .line 213
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mCountryName:Ljava/lang/String;

    .line 217
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mLocationName:Ljava/lang/String;

    .line 218
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mOperatorName:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->logLoadedValues()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_3
    :goto_1
    if-eqz v6, :cond_1

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 220
    :cond_4
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 221
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No CityID found"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 223
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 224
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Exception in query city id."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    if-eqz v6, :cond_1

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 225
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 226
    if-eqz v6, :cond_5

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_5
    throw v0
.end method

.method protected logLoadedValues()V
    .locals 3

    .prologue
    .line 234
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Country   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Location  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mLocationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Operator  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method
