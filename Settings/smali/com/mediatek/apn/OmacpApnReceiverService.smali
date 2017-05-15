.class public Lcom/mediatek/apn/OmacpApnReceiverService;
.super Landroid/app/IntentService;
.source "OmacpApnReceiverService.java"


# static fields
.field private static sAuthType:I


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnId:Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMmsApn:Z

.field private mMcc:Ljava/lang/String;

.field private mMmsPort:Ljava/lang/String;

.field private mMmsProxy:Ljava/lang/String;

.field private mMmsc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNapId:Ljava/lang/String;

.field private mNumeric:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPreferedUri:Landroid/net/Uri;

.field private mProxy:Ljava/lang/String;

.field private mProxyId:Ljava/lang/String;

.field private mResult:Z

.field private mServer:Ljava/lang/String;

.field private mSubId:I

.field private mType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "OmacpApnReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 111
    return-void
.end method

.method private extractAPN(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    const-string/jumbo v0, "NAP-NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0869

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    .line 327
    :cond_1
    const-string/jumbo v0, "NAP-ADDRESS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    .line 328
    const-string/jumbo v0, "PXADDR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    .line 331
    invoke-direct {p0, p1}, Lcom/mediatek/apn/OmacpApnReceiverService;->getPort(Landroid/content/Intent;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/mediatek/apn/OmacpApnReceiverService;->getNapAuthInfo(Landroid/content/Intent;)V

    .line 335
    const-string/jumbo v0, "SERVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    .line 336
    const-string/jumbo v0, "MMSC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    .line 337
    const-string/jumbo v0, "MMS-PROXY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    .line 338
    const-string/jumbo v0, "MMS-PORT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    .line 339
    const-string/jumbo v0, "APN-TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    .line 340
    const-string/jumbo v0, "APN-ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    .line 341
    const-string/jumbo v0, "NAPID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNapId:Ljava/lang/String;

    .line 342
    const-string/jumbo v0, "PROXY-ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxyId:Ljava/lang/String;

    .line 344
    const-string/jumbo v0, "mms"

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    .line 345
    const-string/jumbo v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extractAPN: mName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | mApn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    const-string/jumbo v2, " | mProxy: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    const-string/jumbo v2, " | mServer: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    const-string/jumbo v2, " | mMmsc: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    const-string/jumbo v2, " | mMmsProxy: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    const-string/jumbo v2, " | mMmsPort: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    const-string/jumbo v2, " | mType: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    const-string/jumbo v2, " | mApnId: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    const-string/jumbo v2, " | mNapId: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNapId:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string/jumbo v2, " | mMmsPort: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string/jumbo v2, " | mProxyId: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxyId:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    const-string/jumbo v2, " | mIsMmsApn: "

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method private getNapAuthInfo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 289
    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    .line 290
    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    .line 291
    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    .line 292
    const/4 v2, -0x1

    sput v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    .line 295
    const-string/jumbo v2, "NAPAUTHINFO"

    .line 294
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 296
    .local v0, "napAuthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 298
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 299
    .local v1, "napAuthInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "AUTHNAME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    .line 300
    const-string/jumbo v2, "AUTHSECRET"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    .line 301
    const-string/jumbo v2, "AUTHTYPE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    .line 303
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 304
    const-string/jumbo v2, "PAP"

    iget-object v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    const/4 v2, 0x1

    sput v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    .line 287
    .end local v1    # "napAuthInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 306
    .restart local v1    # "napAuthInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v2, "CHAP"

    iget-object v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    const/4 v2, 0x2

    sput v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    goto :goto_0

    .line 309
    :cond_2
    const/4 v2, 0x3

    sput v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    goto :goto_0
.end method

.method private getPort(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 270
    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    .line 272
    const-string/jumbo v2, "PORT"

    .line 271
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 273
    .local v0, "portList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 275
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 279
    .local v1, "portMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "PORTNBR"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    .line 269
    .end local v1    # "portMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private initState(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 460
    const-string/jumbo v0, "subId"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    .line 461
    iget v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    if-ne v0, v1, :cond_0

    .line 462
    const-string/jumbo v0, "OmacpApnReceiverService"

    const-string/jumbo v1, "Need to check reason not pass subId"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    .line 466
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    .line 468
    const-string/jumbo v0, "content://telephony/carriers/preferapn/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    int-to-long v2, v1

    .line 467
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    .line 469
    const-string/jumbo v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initState: mSimId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | mNumeric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 470
    const-string/jumbo v2, " | mPreferedUri: "

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 470
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->verifyMccMnc()Z

    move-result v0

    return v0
.end method

.method private sendFeedback(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "com.mediatek.omacp.settings.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v1, "appId"

    const-string/jumbo v2, "apn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v1, "result"

    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method private setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnToUseId"    # J
    .param p4, "preferedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 359
    const/4 v2, 0x0

    .line 360
    .local v2, "row":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "apn_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 364
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, p4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 365
    const-string/jumbo v5, "OmacpApnReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update preferred uri ,row = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v5, "OmacpApnReceiverService"

    const-string/jumbo v6, "SetCurrentApn SQLException happened!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "apnId"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "values"    # Landroid/content/ContentValues;
    .param p7, "numeric"    # Ljava/lang/String;
    .param p8, "peferredUri"    # Landroid/net/Uri;

    .prologue
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p8

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 382
    invoke-virtual/range {v6 .. v13}, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v8

    .line 384
    .local v8, "replaceNum":J
    invoke-static/range {p1 .. p1}, Lcom/mediatek/settings/UtilsExt;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v7

    move-object/from16 v10, p1

    move-object/from16 v11, p8

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-interface/range {v7 .. v15}, Lcom/mediatek/settings/ext/IApnSettingsExt;->replaceApn(JLandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v8

    .line 386
    const-string/jumbo v6, "OmacpApnReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "replace number = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-wide/from16 v18, v8

    .line 392
    .local v18, "insertNum":J
    const-wide/16 v6, -0x1

    cmp-long v6, v8, v6

    if-nez v6, :cond_0

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->addMVNOItem(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p6

    .line 395
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 396
    .local v17, "newRow":Landroid/net/Uri;
    if-eqz v17, :cond_0

    .line 397
    const-string/jumbo v6, "OmacpApnReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uri = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 399
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 400
    const-string/jumbo v6, "OmacpApnReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "insert row id = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v17    # "newRow":Landroid/net/Uri;
    :cond_0
    :goto_0
    const-string/jumbo v6, "OmacpApnReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "insert number = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    if-eqz v6, :cond_2

    .line 413
    const-wide/16 v6, -0x1

    cmp-long v6, v18, v6

    if-nez v6, :cond_1

    .line 414
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 415
    const-string/jumbo v6, "OmacpApnReceiverService"

    const-string/jumbo v7, "mms, insertNum is APN_NO_UPDATE ,mResult = false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    :goto_1
    return-void

    .line 403
    :catch_0
    move-exception v16

    .line 404
    .local v16, "e":Landroid/database/SQLException;
    const-string/jumbo v6, "OmacpApnReceiverService"

    const-string/jumbo v7, "insert SQLException happened!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    goto :goto_0

    .line 420
    .end local v16    # "e":Landroid/database/SQLException;
    :cond_2
    const-wide/16 v6, -0x1

    cmp-long v6, v18, v6

    if-nez v6, :cond_3

    .line 421
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 422
    const-string/jumbo v6, "OmacpApnReceiverService"

    const-string/jumbo v7, "not mms, insertNum is APN_NO_UPDATE, mResult = false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 423
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v18, v6

    if-nez v6, :cond_4

    .line 424
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 425
    const-string/jumbo v6, "OmacpApnReceiverService"

    const-string/jumbo v7, "not mms, insertNum is APN_EXIST, mResult = true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    move-object/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/apn/OmacpApnReceiverService;->setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 428
    const-string/jumbo v6, "OmacpApnReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set current apn result, mResult = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private validateProfile(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x2

    .line 209
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 211
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 213
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 215
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 217
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 219
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 221
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 223
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 227
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 229
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    sget v1, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 232
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private verifyMccMnc()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 249
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 251
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "mcc":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "mnc":Ljava/lang/String;
    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    .line 257
    iput-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    .line 258
    const-string/jumbo v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mcc&mnc is right , mMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mMnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    return v2

    .line 260
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 261
    const-string/jumbo v2, "OmacpApnReceiverService"

    const-string/jumbo v3, "mcc&mnc is wrong , set mResult = false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addMVNOItem(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 442
    :try_start_0
    const-string/jumbo v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 441
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 443
    .local v3, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    iget v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    invoke-interface {v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "mvnoType":Ljava/lang/String;
    iget v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    invoke-interface {v3, v4, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "mvnoPattern":Ljava/lang/String;
    const-string/jumbo v4, "mvno_type"

    .line 446
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 445
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string/jumbo v4, "mvno_match_data"

    .line 448
    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1    # "mvnoPattern":Ljava/lang/String;
    .end local v2    # "mvnoType":Ljava/lang/String;
    .end local v3    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_0
    return-object p1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "OmacpApnReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, "action":Ljava/lang/String;
    const-string/jumbo v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string/jumbo v0, "com.mediatek.apn.action.start.omacpservice"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 125
    .local v10, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v0, "apn_setting_intent"

    .line 124
    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    .line 127
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 128
    iput-boolean v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 129
    invoke-direct {p0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 130
    const-string/jumbo v0, "OmacpApnReceiverService"

    const-string/jumbo v1, "mIntentList == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 136
    .local v12, "sizeIntent":I
    const-string/jumbo v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "apn list size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-gtz v12, :cond_2

    .line 139
    iput-boolean v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 140
    invoke-direct {p0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 141
    const-string/jumbo v0, "OmacpApnReceiverService"

    const-string/jumbo v1, "Intent list size is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/mediatek/apn/OmacpApnReceiverService;->initState(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    invoke-direct {p0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 149
    const-string/jumbo v0, "OmacpApnReceiverService"

    const-string/jumbo v1, "Can not get MCC+MNC"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 174
    :cond_3
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    .line 175
    const-string/jumbo v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mNumeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    const-string/jumbo v2, " mPreferedUri = "

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    if-eqz v0, :cond_4

    if-ge v11, v12, :cond_4

    .line 179
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->extractAPN(Landroid/content/Intent;Landroid/content/Context;)V

    .line 180
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v6, "values":Landroid/content/ContentValues;
    invoke-direct {p0, v6}, Lcom/mediatek/apn/OmacpApnReceiverService;->validateProfile(Landroid/content/ContentValues;)V

    .line 182
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/apn/OmacpApnReceiverService;->updateApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 186
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-direct {p0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public replaceApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "apnId"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "values"    # Landroid/content/ContentValues;
    .param p7, "numeric"    # Ljava/lang/String;

    .prologue
    .line 487
    const-wide/16 v10, -0x1

    .line 488
    .local v10, "numReplaced":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and omacpid<>\'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "where":Ljava/lang/String;
    const-string/jumbo v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " numeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " apnId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v8, 0x0

    .line 494
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 495
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-string/jumbo v3, "omacpid"

    const/4 v6, 0x1

    aput-object v3, v4, v6

    .line 497
    const-string/jumbo v7, "name ASC"

    .line 496
    const/4 v6, 0x0

    move-object v3, p2

    .line 494
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 498
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 499
    :cond_0
    const-string/jumbo v2, "OmacpApnReceiverService"

    const-string/jumbo v3, "cursor is null , or cursor.getCount() == 0 return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    const-wide/16 v2, -0x1

    .line 513
    if-eqz v8, :cond_1

    .line 514
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_1
    return-wide v2

    .line 503
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 504
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 505
    const-string/jumbo v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "apnId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " getApnId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 507
    const-wide/16 v10, 0x0

    .line 513
    :cond_3
    if-eqz v8, :cond_4

    .line 514
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_4
    return-wide v10

    .line 510
    :cond_5
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 512
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 513
    if-eqz v8, :cond_6

    .line 514
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_6
    throw v2
.end method
