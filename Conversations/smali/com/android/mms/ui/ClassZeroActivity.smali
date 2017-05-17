.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ClassZeroActivity$1;,
        Lcom/android/mms/ui/ClassZeroActivity$2;,
        Lcom/android/mms/ui/ClassZeroActivity$3;,
        Lcom/android/mms/ui/ClassZeroActivity$4;
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mClassZeroValues:Landroid/content/ContentValues;

.field private mDisplayDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIntentQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageBody:Ljava/lang/String;

.field private mMessageFrom:Ljava/lang/StringBuffer;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPd:Landroid/app/ProgressDialog;

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field private final showProgress:Ljava/lang/Runnable;

.field private useAsWarningDialog:Z


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->showProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/ClassZeroActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->processNextIntent()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/ClassZeroActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ClassZeroActivity;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    .line 78
    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->useAsWarningDialog:Z

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBundle:Landroid/os/Bundle;

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;

    .line 88
    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->showProgress:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    .line 262
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$3;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 268
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$4;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    return-void
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 293
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 289
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private displayZeroMessage(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 180
    const-string/jumbo v1, "pdus"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 181
    .local v0, "messages":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->parsePdu(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    new-instance v1, Lcom/android/mms/ui/ClassZeroActivity$5;

    const-string/jumbo v2, "saveClassZeroMessageThread"

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ClassZeroActivity$5;-><init>(Lcom/android/mms/ui/ClassZeroActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/mms/ui/ClassZeroActivity$5;->start()V

    .line 236
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->finish()V

    .line 178
    :cond_1
    return-void

    .line 213
    :cond_2
    const-string/jumbo v1, "CLASS_ZERO_BODY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\r"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    .line 227
    :cond_3
    const-string/jumbo v1, "USE_AS_WARNING_DIALOG"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->useAsWarningDialog:Z

    .line 228
    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->useAsWarningDialog:Z

    if-eqz v1, :cond_4

    .line 229
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private parsePdu(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v2

    .line 243
    .local v2, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v2, p1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 246
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    invoke-static {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v4

    .line 247
    const-string/jumbo v5, "\r"

    const-string/jumbo v6, ""

    .line 246
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "messageBody":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 248
    invoke-static {p0, v4}, Lcom/sonyericsson/conversations/model/SmsMessage;->extractContentValues(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    .line 251
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v4

    .line 252
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 251
    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSubscriptionIdFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 255
    .local v3, "subscriptionId":I
    iget-object v4, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    const-string/jumbo v5, "read"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    iget-object v4, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    const-string/jumbo v5, "body"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    const-string/jumbo v5, "sub_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    return-object v0
.end method

.method private processNextIntent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->finish()V

    .line 149
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private queueForIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method private declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 283
    return-void

    .line 284
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ClassZeroActivity;->requestWindowFeature(I)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->queueForIntent(Landroid/content/Intent;)V

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;)V

    .line 164
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->queueForIntent(Landroid/content/Intent;)V

    .line 159
    return-void
.end method
