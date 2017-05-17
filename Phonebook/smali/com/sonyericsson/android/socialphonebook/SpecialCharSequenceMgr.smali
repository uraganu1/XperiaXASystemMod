.class public Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;,
        Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;,
        Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;
    }
.end annotation


# static fields
.field private static final ADN_NAME_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final ADN_PHONE_NUMBER_COLUMN_NAME:Ljava/lang/String; = "number"

.field private static final ADN_QUERY_TOKEN:I = -0x1

.field private static final CHAMELEON_CODE_PATTERN:Ljava/lang/String; = "^##[0-9]{1,}#$"

.field private static final CHAMELEON_END_OFFSET:I = 0x1

.field private static final CHAMELEON_START_OFFSET:I = 0x2

.field private static final CT_FAST_CHECK:Ljava/lang/String; = "*#0000#"

.field private static final ELABEL_INFO_DISPLAY:Ljava/lang/String; = "*#07#"

.field private static final ELABEL_SCREEN_PACKAGE:Ljava/lang/String; = "com.sonymobile.settings.CERTIFICATES"

.field private static final MMI_CODES:[Ljava/lang/String;

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static final POUND:Ljava/lang/String; = "#"

.field private static final SKT_DEBUG_SCREEN_LAUNCH:Ljava/lang/String; = "*123456#"

.field private static final SKT_DEBUG_SCREEN_PACKAGE:Ljava/lang/String; = "com.sonyericsson.sktdebugscreen"

.field private static final TAG:Ljava/lang/String;

.field private static mImeiDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsParentActivityDestroyed:Z

.field private static mProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static mSktMarker:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mIsParentActivityDestroyed:Z

    return v0
.end method

.method static synthetic -set0(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mImeiDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic -set1(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->unlockOrientation(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "**04"

    aput-object v1, v0, v3

    const-string/jumbo v1, "**05"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->MMI_CODES:[Ljava/lang/String;

    .line 85
    sput-boolean v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mIsParentActivityDestroyed:Z

    .line 92
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;->Invalid:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mSktMarker:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceIdLabel(I)I
    .locals 2
    .param p0, "phoneType"    # I

    .prologue
    .line 432
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 433
    const v0, 0x7f09009d

    return v0

    .line 434
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 435
    const v0, 0x7f09009e

    return v0

    .line 438
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDeviceIdLabel: no known label for phone "

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 259
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;I)Z

    move-result v0

    return v0
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;I)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;
    .param p3, "subscription"    # I

    .prologue
    .line 280
    const-string/jumbo v3, "account"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accounts/AccountManager;

    .line 282
    .local v12, "am":Landroid/accounts/AccountManager;
    const/4 v3, 0x3

    new-array v11, v3, [Ljava/lang/String;

    .line 283
    const-string/jumbo v3, "com.sonyericsson.adncontacts"

    const/4 v5, 0x0

    aput-object v3, v11, v5

    .line 284
    const-string/jumbo v3, "com.sonyericsson.adnsub1contacts"

    const/4 v5, 0x1

    aput-object v3, v11, v5

    .line 285
    const-string/jumbo v3, "com.sonyericsson.adnsub2contacts"

    const/4 v5, 0x2

    aput-object v3, v11, v5

    .line 288
    .local v11, "adnAccountTypes":[Ljava/lang/String;
    add-int/lit8 v3, p3, 0x1

    aget-object v3, v11, v3

    invoke-virtual {v12, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 290
    .local v10, "accounts":[Landroid/accounts/Account;
    array-length v3, v10

    if-nez v3, :cond_0

    .line 291
    const/4 v3, 0x0

    return v3

    .line 296
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getHideSimContacts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    const/4 v3, 0x0

    return v3

    .line 302
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getEnableAdnLookup()Z

    move-result v3

    if-nez v3, :cond_2

    .line 303
    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 302
    if-eqz v3, :cond_2

    .line 305
    const/4 v3, 0x0

    return v3

    .line 313
    :cond_2
    const-string/jumbo v3, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/KeyguardManager;

    .line 314
    .local v15, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v15}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    const/4 v3, 0x0

    return v3

    .line 318
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 319
    .local v16, "len":I
    const/4 v3, 0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_4

    const/4 v3, 0x5

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    const-string/jumbo v3, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 322
    add-int/lit8 v3, v16, -0x1

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 332
    .local v14, "index":I
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 335
    .local v2, "handler":Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v3, v14, -0x1

    .line 336
    const/4 v5, -0x1

    .line 335
    invoke-direct {v4, v3, v2, v5}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 339
    .local v4, "sc":Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v3, v14, -0x1

    iput v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 340
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 343
    new-instance v3, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 344
    iget-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimContactsTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getEmptyLoading(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 348
    iget-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 349
    iget-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 350
    iget-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 353
    iget-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 355
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mIsParentActivityDestroyed:Z

    .line 357
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->lockOrientation(Landroid/content/Context;)V

    .line 358
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->-set0(Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/content/Context;)Landroid/content/Context;

    .line 360
    iget-object v3, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$1;

    invoke-direct {v5}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$1;-><init>()V

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 366
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mProgressDialog:Ljava/lang/ref/WeakReference;

    .line 369
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 370
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const-string/jumbo v3, "number"

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 369
    const/4 v3, -0x1

    .line 370
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 369
    invoke-virtual/range {v2 .. v9}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    const/4 v3, 0x1

    return v3

    .line 372
    .end local v2    # "handler":Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;
    .end local v4    # "sc":Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v14    # "index":I
    :catch_0
    move-exception v13

    .line 376
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method private static handleChameleonHiddenCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isChameleonHiddenMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->isHiddenChameleonCode(Ljava/lang/String;)Z

    move-result v2

    .line 199
    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "phoneNumber":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.sbmsprint.HiddenMenus.HIDDEN_CODE"

    .line 205
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->getHiddenCodeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 204
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    .local v0, "hiddenContactsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->TAG:Ljava/lang/String;

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Chameleon hidden code broadcast sent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v2, 0x1

    return v2

    .line 212
    .end local v0    # "hiddenContactsIntent":Landroid/content/Intent;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z
    .param p3, "textField"    # Landroid/widget/EditText;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 116
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "dialString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    return v6

    .line 120
    :cond_0
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleSecretCodeEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 120
    if-nez v5, :cond_1

    .line 122
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleChameleonHiddenCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 120
    if-eqz v5, :cond_2

    .line 123
    :cond_1
    return v4

    .line 126
    :cond_2
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleMmiEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 127
    .local v1, "isHandleMmiEntry":Z
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 128
    invoke-static {p0, v6}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v2

    .line 129
    .local v2, "isSim1Absent":Z
    invoke-static {p0, v4}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v3

    .line 131
    .local v3, "isSim2Absent":Z
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 132
    if-nez v1, :cond_3

    invoke-static {p0, v0, p3}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v4

    :cond_3
    return v4

    .line 133
    :cond_4
    if-eqz v2, :cond_6

    .line 134
    if-nez v1, :cond_5

    .line 135
    invoke-static {p0, v0, p3, v4}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;I)Z

    move-result v4

    .line 134
    :cond_5
    return v4

    .line 137
    :cond_6
    if-eqz v3, :cond_a

    .line 138
    if-nez v1, :cond_7

    .line 139
    invoke-static {p0, v0, p3, v6}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;I)Z

    move-result v4

    .line 138
    :cond_7
    return v4

    .line 143
    .end local v2    # "isSim1Absent":Z
    .end local v3    # "isSim2Absent":Z
    :cond_8
    if-nez v1, :cond_9

    invoke-static {p0, v0, p3}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v4

    :cond_9
    return v4

    .line 145
    .restart local v2    # "isSim1Absent":Z
    .restart local v3    # "isSim2Absent":Z
    :cond_a
    return v6
.end method

.method private static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string/jumbo v0, "*#06#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->showDeviceIdPanel(Landroid/content/Context;)V

    .line 382
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static handleMmiEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->isMmiEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    const-string/jumbo v1, "telecom"

    .line 628
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 630
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->handleMmi(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 632
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 160
    .local v1, "len":I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string/jumbo v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.provider.Telephony.SECRET_CODE"

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x4

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 162
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    const/4 v2, 0x1

    return v2

    .line 168
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method static handleSecretCodeEx(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 181
    const-string/jumbo v1, "*#0000#"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Telephony.SECRET_CODE"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android_secret_code://EX_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 182
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return v5

    .line 190
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v1, "*#07#"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.settings.CERTIFICATES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 193
    return v5

    .line 195
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static handleSktDebugScreenLaunchCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 223
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mSktMarker:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;->Uninstalled:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    if-ne v2, v3, :cond_0

    .line 224
    return v4

    .line 225
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mSktMarker:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;->Invalid:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    if-ne v2, v3, :cond_1

    .line 227
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sonyericsson.sktdebugscreen"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;->Installed:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    sput-object v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mSktMarker:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "dialString":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 237
    return v4

    .line 229
    .end local v0    # "dialString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;->Uninstalled:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    sput-object v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mSktMarker:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$StkDebugScreenInstallState;

    .line 231
    return v4

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dialString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "*123456#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    const/4 v2, 0x1

    return v2

    .line 244
    :cond_3
    return v4
.end method

.method private static isHiddenChameleonCode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dialNumber"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string/jumbo v0, "^##[0-9]{1,}#$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMmiEntry(Ljava/lang/String;)Z
    .locals 3
    .param p0, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 642
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->MMI_CODES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->MMI_CODES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    :cond_0
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 642
    :cond_1
    return v0
.end method

.method private static lockOrientation(Landroid/content/Context;)V
    .locals 3
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 596
    if-eqz p0, :cond_2

    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 598
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 599
    const/4 v0, 0x6

    .line 603
    :cond_0
    :goto_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "activityContext":Landroid/content/Context;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 595
    .end local v0    # "orientation":I
    :goto_1
    return-void

    .line 600
    .restart local v0    # "orientation":I
    .restart local p0    # "activityContext":Landroid/content/Context;
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 601
    const/4 v0, 0x7

    goto :goto_0

    .line 605
    .end local v0    # "orientation":I
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "context is null, ignore this lock request"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static onDestroy()V
    .locals 2

    .prologue
    .line 455
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 456
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 458
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 460
    const/4 v0, 0x0

    .line 464
    .end local v0    # "progressDialog":Landroid/app/ProgressDialog;
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mIsParentActivityDestroyed:Z

    .line 454
    return-void
.end method

.method public static onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mImeiDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    return-void

    .line 447
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mImeiDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 448
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 450
    sput-object v2, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mImeiDialog:Ljava/lang/ref/WeakReference;

    .line 444
    :cond_1
    return-void
.end method

.method private static showDeviceIdPanel(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->getSubscriptions()[I

    move-result-object v0

    .line 412
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->showDeviceIdPanel(Landroid/content/Context;[I)V

    .line 411
    return-void
.end method

.method private static varargs showDeviceIdPanel(Landroid/content/Context;[I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscriptions"    # [I

    .prologue
    .line 388
    const-string/jumbo v2, ""

    .line 389
    .local v2, "label":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v4, "msg":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, p1

    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 391
    aget v6, p1, v1

    .line 392
    .local v6, "subscription":I
    invoke-static {p0, v6}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getPhoneType(Landroid/content/Context;I)I

    move-result v5

    .line 393
    .local v5, "phoneType":I
    invoke-static {p0, v6}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "deviceId":Ljava/lang/String;
    const/4 v7, -0x1

    if-ne v7, v6, :cond_1

    .line 396
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->getDeviceIdLabel(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v5    # "phoneType":I
    .end local v6    # "subscription":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v2, v7}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->showImeiDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void

    .line 400
    .restart local v0    # "deviceId":Ljava/lang/String;
    .restart local v5    # "phoneType":I
    .restart local v6    # "subscription":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 401
    const v7, 0x7f09009d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_2
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static showImeiDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 418
    const v2, 0x104000a

    const/4 v3, 0x0

    .line 417
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 418
    const/4 v2, 0x0

    .line 417
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 419
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 421
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$2;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 426
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 428
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->mImeiDialog:Ljava/lang/ref/WeakReference;

    .line 416
    return-void
.end method

.method private static unlockOrientation(Landroid/content/Context;)V
    .locals 2
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 610
    if-eqz p0, :cond_0

    .line 611
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "activityContext":Landroid/content/Context;
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 609
    .restart local p0    # "activityContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 613
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "context is null, ignore this unlock request"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
