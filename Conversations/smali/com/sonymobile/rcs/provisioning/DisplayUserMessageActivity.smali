.class public Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;
.super Landroid/app/Activity;
.source "DisplayUserMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;,
        Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;
    }
.end annotation


# static fields
.field private static mBundle:Landroid/os/Bundle;

.field private static mEucrId:Ljava/lang/String;

.field private static mEucrType:Ljava/lang/String;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mMsisdnEditText:Landroid/widget/EditText;

.field private mMsisdnNumber:Ljava/lang/String;

.field private mNotifyCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mWelcomeDialog:Landroid/app/Dialog;

.field private msisdnDialog:Landroid/app/Dialog;

.field private notificationManager:Landroid/app/NotificationManager;

.field private params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

.field private retryCount:I

.field private unAuthorized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;

    .line 122
    new-instance v0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mNotifyCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 513
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->userLeaveHint()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->triggerRcsService()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->resetConfiguration()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mEucrId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->updateEUCRStatus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private displayEUCRDialog(Landroid/content/Intent;)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 334
    const/4 v1, 0x1

    .line 335
    .local v1, "displayDialog":Z
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "action"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "action":Ljava/lang/String;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-nez v11, :cond_1

    .line 341
    :goto_0
    new-instance v11, Landroid/app/Dialog;

    invoke-direct {v11, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    .line 342
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 343
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v12, 0x7f030002

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setContentView(I)V

    .line 344
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-virtual {v11, v12, v13}, Landroid/view/Window;->setLayout(II)V

    .line 346
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v12, 0x7f080012

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 347
    .local v5, "negButton":Landroid/widget/Button;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v12, 0x7f080013

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 348
    .local v7, "posButton":Landroid/widget/Button;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v12, 0x7f080011

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 350
    .local v6, "okButton":Landroid/widget/Button;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v12, 0x7f08000e

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 351
    .local v10, "titleText":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v12, 0x7f08000f

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 352
    .local v3, "introText":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v12, 0x7f08000a

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    .local v9, "scrollView":Landroid/widget/ScrollView;
    const-string/jumbo v11, "com.sonymobile.rcs.TERMS_SIP_REQUEST"

    .line 354
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "com.sonymobile.rcs.TERMS_SIP_ACK"

    .line 383
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "com.sonymobile.rcs.TERMS_SIP_USER_NOTIFICATION"

    .line 408
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "com.sonymobile.rcs.TERMS_SIP_RECONFIGURE_NOTIFICATION"

    .line 424
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 429
    .end local v1    # "displayDialog":Z
    :cond_0
    :goto_1
    invoke-virtual {v9}, Landroid/widget/ScrollView;->isVerticalScrollBarEnabled()Z

    move-result v11

    if-nez v11, :cond_8

    .line 434
    :goto_2
    if-nez v1, :cond_9

    .line 450
    :goto_3
    return-void

    .line 338
    .end local v3    # "introText":Landroid/widget/TextView;
    .end local v5    # "negButton":Landroid/widget/Button;
    .end local v6    # "okButton":Landroid/widget/Button;
    .end local v7    # "posButton":Landroid/widget/Button;
    .end local v9    # "scrollView":Landroid/widget/ScrollView;
    .end local v10    # "titleText":Landroid/widget/TextView;
    .restart local v1    # "displayDialog":Z
    :cond_1
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "EUCR / EUNR Notification: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    .restart local v3    # "introText":Landroid/widget/TextView;
    .restart local v5    # "negButton":Landroid/widget/Button;
    .restart local v6    # "okButton":Landroid/widget/Button;
    .restart local v7    # "posButton":Landroid/widget/Button;
    .restart local v9    # "scrollView":Landroid/widget/ScrollView;
    .restart local v10    # "titleText":Landroid/widget/TextView;
    :cond_2
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "id"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mEucrId:Ljava/lang/String;

    .line 356
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "type"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mEucrType:Ljava/lang/String;

    .line 359
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "pin"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 360
    .local v2, "eucrPin":Z
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "acceptButtonLabel"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    .line 361
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    new-instance v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$5;

    invoke-direct {v11, p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$5;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "rejectButtonLabel"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    .line 373
    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    new-instance v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$6;

    invoke-direct {v11, p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$6;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 384
    .end local v2    # "eucrPin":Z
    :cond_3
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "id"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, "requestID":Ljava/lang/String;
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "subject"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v1, 0x0

    .line 386
    .local v1, "displayDialog":Z
    :goto_4
    if-nez v1, :cond_5

    :goto_5
    const-string/jumbo v11, "Persistent"

    .line 400
    sget-object v12, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mEucrType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mEucrId:Ljava/lang/String;

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "notification"

    .line 401
    invoke-virtual {p0, v11}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 402
    .local v4, "mgr":Landroid/app/NotificationManager;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0x6f

    invoke-virtual {v4, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 403
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    if-eqz v11, :cond_0

    .line 404
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_1

    .end local v4    # "mgr":Landroid/app/NotificationManager;
    .local v1, "displayDialog":Z
    :cond_4
    const/4 v1, 0x1

    .line 385
    goto :goto_4

    .local v1, "displayDialog":Z
    :cond_5
    const v11, 0x7f050012

    .line 387
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(I)V

    const/4 v11, 0x0

    .line 388
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 389
    new-instance v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$7;

    invoke-direct {v11, p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$7;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 410
    .end local v8    # "requestID":Ljava/lang/String;
    .local v1, "displayDialog":Z
    :cond_6
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "okButtonLabel"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    .line 411
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 412
    new-instance v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$8;

    invoke-direct {v11, p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$8;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 425
    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/rcs/utils/DeviceUtils;->startFreshConfig(Landroid/content/Context;)V

    .line 426
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 430
    .end local v1    # "displayDialog":Z
    :cond_8
    invoke-virtual {v9}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f070000

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 435
    :cond_9
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-nez v11, :cond_a

    .line 439
    :goto_6
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "subject"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    iget-object v12, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mNotifyCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 441
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/16 v11, 0xf

    .line 443
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 444
    sget-object v11, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "text"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    const/4 v11, 0x0

    .line 446
    invoke-direct {p0, v11}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->updateEUCRStatus(I)V

    const-string/jumbo v11, "notification"

    .line 447
    invoke-virtual {p0, v11}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 448
    .restart local v4    # "mgr":Landroid/app/NotificationManager;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0x6f

    invoke-virtual {v4, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_3

    .line 436
    .end local v4    # "mgr":Landroid/app/NotificationManager;
    :cond_a
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "title: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v14, "subject"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "; message: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v14, "text"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private displayWelcomeDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x2

    const/4 v11, 0x0

    .line 193
    new-instance v8, Landroid/app/Dialog;

    invoke-direct {v8, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    .line 194
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 195
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 200
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v9, 0x7f030002

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 202
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 204
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v9, 0x7f080012

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 205
    .local v2, "negButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v9, 0x7f080013

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 206
    .local v4, "posButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v9, 0x7f080011

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 208
    .local v3, "okButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v9, 0x7f08000e

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 209
    .local v7, "titleText":Landroid/widget/TextView;
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v9, 0x7f08000f

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 212
    .local v1, "introText":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v9, 0x7f08000a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 214
    .local v6, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v6}, Landroid/widget/ScrollView;->isVerticalScrollBarEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 221
    :goto_1
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "accept_btn_key"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 225
    .local v0, "accept_btn":Z
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "reject_btn_key"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 227
    .local v5, "reject_btn":Z
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_4

    .line 234
    :goto_2
    if-nez v0, :cond_5

    .line 286
    :cond_0
    if-eqz v0, :cond_7

    .line 288
    :cond_1
    invoke-virtual {v3, v11}, Landroid/widget/Button;->setVisibility(I)V

    const v8, 0x7f050012

    .line 289
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(I)V

    .line 290
    new-instance v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$4;

    invoke-direct {v8, p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$4;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    :goto_3
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mNotifyCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 329
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v8, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 330
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 331
    return-void

    .line 198
    .end local v0    # "accept_btn":Z
    .end local v1    # "introText":Landroid/widget/TextView;
    .end local v2    # "negButton":Landroid/widget/Button;
    .end local v3    # "okButton":Landroid/widget/Button;
    .end local v4    # "posButton":Landroid/widget/Button;
    .end local v5    # "reject_btn":Z
    .end local v6    # "scrollView":Landroid/widget/ScrollView;
    .end local v7    # "titleText":Landroid/widget/TextView;
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    const v9, 0x7f030003

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(I)V

    goto/16 :goto_0

    .line 215
    .restart local v1    # "introText":Landroid/widget/TextView;
    .restart local v2    # "negButton":Landroid/widget/Button;
    .restart local v3    # "okButton":Landroid/widget/Button;
    .restart local v4    # "posButton":Landroid/widget/Button;
    .restart local v6    # "scrollView":Landroid/widget/ScrollView;
    .restart local v7    # "titleText":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v6}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f070000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 228
    .restart local v0    # "accept_btn":Z
    .restart local v5    # "reject_btn":Z
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "title: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; accept_btn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; reject_btn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    :cond_5
    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V

    const v8, 0x7f050001

    .line 238
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 239
    new-instance v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$2;

    invoke-direct {v8, p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$2;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    const v8, 0x7f050015

    .line 273
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 275
    :goto_4
    new-instance v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$3;

    invoke-direct {v8, p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$3;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_6
    const v8, 0x7f050010

    .line 271
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 286
    :cond_7
    if-nez v5, :cond_1

    goto/16 :goto_3
.end method

.method private getMsisdnDialog()V
    .locals 12

    .prologue
    const v11, 0x7f080014

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 526
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    .line 527
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 529
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 534
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    const v10, 0x7f030005

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 535
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, "introText":Landroid/widget/TextView;
    const v7, 0x7f05002a

    .line 536
    invoke-virtual {p0, v7}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 543
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    const v10, 0x7f08001a

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 544
    .local v6, "okButton":Landroid/widget/Button;
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    const v10, 0x7f080018

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 545
    .local v3, "internationalCode":Landroid/widget/EditText;
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    const v10, 0x7f080019

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;

    .line 546
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnNumber:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 551
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCurrentMsisdn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 563
    :goto_2
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    const v10, 0x7f080017

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 564
    .local v2, "errorText":Landroid/widget/TextView;
    iget v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->retryCount:I

    if-gtz v7, :cond_4

    .line 575
    :goto_3
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;

    new-instance v9, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$9;

    invoke-direct {v9, p0, v6}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$9;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;Landroid/widget/Button;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 587
    new-instance v7, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;

    invoke-direct {v7, p0, v3}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    const v9, 0x7f080016

    invoke-virtual {v7, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "introText":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "introText":Landroid/widget/TextView;
    const v7, 0x7f050011

    .line 629
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 631
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mNotifyCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v7, v9}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 632
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 633
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 634
    return-void

    .line 530
    .end local v2    # "errorText":Landroid/widget/TextView;
    .end local v3    # "internationalCode":Landroid/widget/EditText;
    .end local v4    # "introText":Landroid/widget/TextView;
    .end local v6    # "okButton":Landroid/widget/Button;
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    const v10, 0x7f030004

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 531
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "introText":Landroid/widget/TextView;
    const/high16 v7, 0x7f050000

    .line 532
    invoke-virtual {p0, v7}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 548
    .restart local v3    # "internationalCode":Landroid/widget/EditText;
    .restart local v6    # "okButton":Landroid/widget/Button;
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnNumber:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 549
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 552
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCurrentMsisdn()Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, "msisdnEntered":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 555
    .local v1, "countryCodeLength":I
    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 559
    :goto_4
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 556
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCurrentMsisdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v1    # "countryCodeLength":I
    .end local v5    # "msisdnEntered":Ljava/lang/String;
    .restart local v2    # "errorText":Landroid/widget/TextView;
    :cond_4
    const v7, 0x7f050017

    .line 565
    invoke-virtual {p0, v7}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-gtz v7, :cond_5

    move v7, v8

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 567
    iget-boolean v7, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->unAuthorized:Z

    if-nez v7, :cond_6

    const v7, 0x7f050016

    .line 571
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_5
    move v7, v9

    .line 566
    goto :goto_5

    :cond_6
    const v7, 0x7f050027

    .line 568
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const/high16 v7, -0x10000

    .line 569
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3
.end method

.method private resetConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRcsStates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 464
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 465
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->resetRcsConfig(Landroid/content/Context;)V

    .line 466
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sonymobile/rcs/service/StartService;->setUserMessageAccepted(Landroid/content/Context;Z)V

    .line 467
    return-void

    .line 461
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private triggerRcsService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 701
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sonymobile/rcs/service/StartService;->setUserMessageAccepted(Landroid/content/Context;Z)V

    .line 702
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 703
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.rcs.accept"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 705
    invoke-static {}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isFirstLaunch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 713
    :goto_0
    invoke-static {v2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->setFirstLaunch(Z)V

    .line 714
    return-void

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 708
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->deactivateOtherRcsClients(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateEUCRStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 454
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setEUCRStatus(I)V

    .line 455
    return-void
.end method

.method private userLeaveHint()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "notification"

    .line 647
    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 648
    .local v4, "mgr":Landroid/app/NotificationManager;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v5, "nBuilder":Landroid/app/Notification$Builder;
    const/4 v7, 0x0

    .local v7, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 651
    .local v3, "message":Ljava/lang/String;
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "msisdn-number"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 652
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-class v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .line 653
    invoke-virtual {v2, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v8, "com.sonymobile.rcs.provisioning.DIALOG_DATA"

    .line 654
    sget-object v9, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    .line 655
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 657
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const v9, 0x7f05003b

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 670
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "EUCR"

    invoke-virtual {v8, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_4

    .line 675
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "title_key"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 676
    .local v7, "title":Ljava/lang/String;
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "message_key"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "message":Ljava/lang/String;
    :cond_0
    :goto_0
    const/high16 v8, 0x8000000

    .line 679
    invoke-static {p0, v11, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 682
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->checkClientMode(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    const v1, 0x7f020001

    .line 687
    .local v1, "icon":I
    :goto_1
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 691
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 694
    .local v6, "notify":Landroid/app/Notification;
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    if-nez v8, :cond_6

    .line 697
    :goto_2
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v8, 0x6f

    invoke-virtual {v4, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 698
    return-void

    .line 658
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "icon":I
    .end local v6    # "notify":Landroid/app/Notification;
    .local v3, "message":Ljava/lang/String;
    .local v7, "title":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-virtual {v8, v12}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setMsisdnNotificationStatus(Z)V

    .line 659
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnNumber:Ljava/lang/String;

    const v8, 0x7f050011

    .line 660
    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    const v8, 0x7f05002d

    .line 664
    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 666
    .local v7, "title":Ljava/lang/String;
    :goto_3
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "retry-count"

    iget v10, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->retryCount:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnNumber:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 668
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "msisdn-number"

    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnNumber:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .local v7, "title":Ljava/lang/String;
    :cond_3
    const v8, 0x7f05002c

    .line 662
    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "title":Ljava/lang/String;
    goto :goto_3

    .line 672
    .local v3, "message":Ljava/lang/String;
    .local v7, "title":Ljava/lang/String;
    :cond_4
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "subject"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 673
    .local v7, "title":Ljava/lang/String;
    sget-object v8, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "text"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 682
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const v1, 0x7f020002

    goto/16 :goto_1

    .line 695
    .restart local v1    # "icon":I
    .restart local v6    # "notify":Landroid/app/Notification;
    :cond_6
    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v6, Landroid/app/Notification;->flags:I

    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->notificationManager:Landroid/app/NotificationManager;

    const/4 v6, 0x1

    .line 143
    new-array v0, v6, [Lcom/sonymobile/rcs/utils/logger/Appender;

    new-instance v6, Lcom/sonymobile/rcs/platform/logger/AndroidAppender;

    invoke-direct {v6}, Lcom/sonymobile/rcs/platform/logger/AndroidAppender;-><init>()V

    aput-object v6, v0, v8

    .line 146
    .local v0, "appenders":[Lcom/sonymobile/rcs/utils/logger/Appender;
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->setAppenders([Lcom/sonymobile/rcs/utils/logger/Appender;)V

    .line 148
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "FromIMChat"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 154
    :goto_1
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 157
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "EUCR"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 158
    .local v1, "isEUCR":Z
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const v7, 0x7f05003b

    invoke-virtual {p0, v7}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 161
    .local v2, "isMsisdnDialog":Z
    new-instance v6, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-direct {v6, p0}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    .line 162
    if-nez v1, :cond_3

    .line 165
    if-nez v2, :cond_4

    .line 172
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    if-nez v6, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->finish()V

    .line 190
    :goto_2
    return-void

    .line 149
    .end local v1    # "isEUCR":Z
    .end local v2    # "isMsisdnDialog":Z
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "onCreate"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "com.sonymobile.rcs.provisioning.DIALOG_DATA"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    sput-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    goto :goto_1

    .line 155
    :cond_2
    return-void

    .line 164
    .restart local v1    # "isEUCR":Z
    .restart local v2    # "isMsisdnDialog":Z
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->displayEUCRDialog(Landroid/content/Intent;)V

    goto :goto_2

    .line 166
    :cond_4
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "retry-count"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->retryCount:I

    .line 167
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "unauthorized"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->unAuthorized:Z

    .line 168
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "msisdn-number"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnNumber:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getMsisdnDialog()V

    goto :goto_2

    .line 173
    :cond_5
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "title_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "title":Ljava/lang/String;
    sget-object v6, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "message_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "message":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 184
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->finish()V

    goto :goto_2

    .line 178
    :cond_6
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v4, "textView":Landroid/widget/TextView;
    const/16 v6, 0xf

    .line 179
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 180
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-direct {p0, v5, v3}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->displayWelcomeDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    .line 478
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3

    .line 481
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 482
    return-void

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 638
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 639
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3

    .line 643
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->finish()V

    .line 644
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->userLeaveHint()V

    goto :goto_0

    .line 639
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method
