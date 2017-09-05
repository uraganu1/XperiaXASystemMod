.class Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;
.super Ljava/lang/Object;
.source "KeyguardDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogSequenceManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;
    }
.end annotation


# instance fields
.field private mDialogSequenceObserver:Landroid/database/ContentObserver;

.field private mDialogShowCallbackQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerDialogShowing:Z

.field private mLocked:Z

.field final synthetic this$0:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->queryDialogSequenceSeetings()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->setLocked(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)V
    .locals 4
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    .prologue
    const/4 v3, 0x0

    .line 126
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mInnerDialogShowing:Z

    .line 124
    iput-boolean v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mLocked:Z

    .line 259
    new-instance v0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager$1;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogSequenceObserver:Landroid/database/ContentObserver;

    .line 128
    const-string/jumbo v0, "KeyguardDialogManager"

    const-string/jumbo v1, "DialogSequenceManager DialogSequenceManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    .line 132
    invoke-static {p1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "dialog_sequence_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogSequenceObserver:Landroid/database/ContentObserver;

    .line 132
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    return-void
.end method

.method private enableShow()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    const-string/jumbo v3, "KeyguardDialogManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DialogSequenceManager --enableShow()-- !mDialogShowCallbackQueue.isEmpty() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 200
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    const-string/jumbo v4, " !getInnerDialogShowing() = "

    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->getInnerDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 200
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    const-string/jumbo v4, " !isOtherModuleShowing() = "

    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->isOtherModuleShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 200
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string/jumbo v4, "!isAlarmBoot() = "

    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    invoke-static {}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->isAlarmBoot()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 200
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string/jumbo v4, " isDeviceProvisioned() = "

    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    invoke-static {v4}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->-get1(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v4

    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->getInnerDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    :goto_4
    return v1

    :cond_1
    move v0, v2

    .line 201
    goto :goto_0

    :cond_2
    move v0, v2

    .line 202
    goto :goto_1

    :cond_3
    move v0, v2

    .line 203
    goto :goto_2

    :cond_4
    move v0, v2

    .line 204
    goto :goto_3

    .line 210
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->isOtherModuleShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->-get1(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    .line 209
    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->isEncryptMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_4
.end method

.method private getInnerDialogShowing()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mInnerDialogShowing:Z

    return v0
.end method

.method private getLocked()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mLocked:Z

    return v0
.end method

.method private isOtherModuleShowing()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->queryDialogSequenceSeetings()I

    move-result v0

    .line 222
    .local v0, "value":I
    const-string/jumbo v1, "KeyguardDialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogSequenceManager --isOtherModuleShowing()--dialog_sequence_settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v0, :cond_0

    .line 226
    if-ne v0, v5, :cond_1

    .line 227
    :cond_0
    return v4

    .line 229
    :cond_1
    return v5
.end method

.method private queryDialogSequenceSeetings()I
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 253
    const-string/jumbo v2, "dialog_sequence_settings"

    .line 254
    const/4 v3, 0x0

    .line 252
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 255
    .local v0, "value":I
    return v0
.end method

.method private setInnerDialogShowing(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mInnerDialogShowing:Z

    .line 232
    return-void
.end method

.method private setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mLocked:Z

    .line 240
    return-void
.end method


# virtual methods
.method public handleShowDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 147
    const-string/jumbo v1, "KeyguardDialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogSequenceManager --handleShowDialog()--enableShow() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->enableShow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->enableShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->getLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;

    .line 153
    .local v0, "dialogCallBack":Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;
    const-string/jumbo v1, "KeyguardDialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogSequenceManager --handleShowDialog()--dialogCallBack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;->show()V

    .line 158
    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->setInnerDialogShowing(Z)V

    .line 145
    .end local v0    # "dialogCallBack":Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string/jumbo v1, "KeyguardDialogManager"

    const-string/jumbo v2, "DialogSequenceManager --handleShowDialog()--System.putInt( dialog_sequence_settings value = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public reportDialogClose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    const-string/jumbo v0, "KeyguardDialogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DialogSequenceManager --reportDialogClose()--mDialogShowCallbackQueue.isEmpty() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, v3}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->setInnerDialogShowing(Z)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string/jumbo v0, "KeyguardDialogManager"

    const-string/jumbo v1, "DialogSequenceManager --reportDialogClose()--System.putInt( dialog_sequence_settings value = 0 --setLocked(false)--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dialog_sequence_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    invoke-direct {p0, v3}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->setLocked(Z)V

    .line 172
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->handleShowDialog()V

    goto :goto_0
.end method

.method public requestShowDialog(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;

    .prologue
    .line 139
    const-string/jumbo v0, "KeyguardDialogManager"

    const-string/jumbo v1, "DialogSequenceManager --requestShowDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->handleShowDialog()V

    .line 137
    return-void
.end method
