.class Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;
.super Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;
.source "CallerIdContact.java"


# static fields
.field private static final COLUMN_CITY:Ljava/lang/String; = "cid_pCityName"

.field private static final COLUMN_COMPANY:Ljava/lang/String; = "cid_pCompany"

.field private static final COLUMN_COUNTRY:Ljava/lang/String; = "cid_pCountryName"

.field private static final COLUMN_FIRST_NAME:Ljava/lang/String; = "cid_pFirstName"

.field private static final COLUMN_LAST_NAME:Ljava/lang/String; = "cid_pLastName"

.field private static final COLUMN_NAME:Ljava/lang/String; = "cid_pName"

.field private static final COLUMN_STATE:Ljava/lang/String; = "cid_pStateName"

.field private static final COLUMN_STATE_ABRV:Ljava/lang/String; = "cid_pStateAbbr"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.cequint.ecid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const-string/jumbo v0, "content://com.cequint.ecid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->CONTENT_URI:Landroid/net/Uri;

    .line 268
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;-><init>()V

    return-void
.end method

.method public static getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string/jumbo v0, "com.cequint.ecid"

    return-object v0
.end method


# virtual methods
.method public computeCityIdDisplayName(ILandroid/text/TextPaint;)Ljava/lang/String;
    .locals 5
    .param p1, "maxLength"    # I
    .param p2, "paintArea"    # Landroid/text/TextPaint;

    .prologue
    .line 301
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    return-object v2

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateAbrv:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCountryName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCountryName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    .line 325
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    return-object v2

    .line 306
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateAbrv:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 319
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 307
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_6
    if-lez p1, :cond_7

    if-eqz p2, :cond_7

    .line 312
    int-to-float v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float v0, v2, v3

    .line 314
    .local v0, "cityNameShowRoom":F
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    .line 315
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 314
    invoke-static {v2, p2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 316
    .local v1, "result":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    .line 318
    .end local v0    # "cityNameShowRoom":F
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public createNameIdDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "name":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mNameIdDisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mNameIdDisplayName:Ljava/lang/String;

    return-object v1

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mNameIdDisplayName:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mNameIdDisplayName:Ljava/lang/String;

    return-object v1

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mFirstName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mLastName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCompany:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mFirstName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 339
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mLastName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mLastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected implLookup(Landroid/content/ContentResolver;Ljava/lang/CharSequence;I)V
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "strNumber"    # Ljava/lang/CharSequence;
    .param p3, "callType"    # I

    .prologue
    .line 363
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->TAG:Ljava/lang/String;

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

    .line 366
    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 367
    const-string/jumbo v0, "NANP"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string/jumbo v0, "user"

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 369
    .local v4, "flags":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 371
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    const-string/jumbo v0, "cid_pCityName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCityName:Ljava/lang/String;

    .line 375
    const-string/jumbo v0, "cid_pStateName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateName:Ljava/lang/String;

    .line 376
    const-string/jumbo v0, "cid_pStateAbbr"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mStateAbrv:Ljava/lang/String;

    .line 377
    const-string/jumbo v0, "cid_pCountryName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCountryName:Ljava/lang/String;

    .line 378
    const-string/jumbo v0, "cid_pName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mName:Ljava/lang/String;

    .line 379
    const-string/jumbo v0, "cid_pFirstName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mFirstName:Ljava/lang/String;

    .line 380
    const-string/jumbo v0, "cid_pLastName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mLastName:Ljava/lang/String;

    .line 381
    const-string/jumbo v0, "cid_pCompany"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->mCompany:Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->logLoadedValues()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 361
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-void

    .line 383
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 384
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No CallerID found"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 387
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Exception in query caller id."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    if-eqz v6, :cond_2

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 388
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 389
    if-eqz v6, :cond_4

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_4
    throw v0
.end method
