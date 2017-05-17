.class public Lcom/sonyericsson/conversations/ui/util/IsComposingManager;
.super Ljava/lang/Object;
.source "IsComposingManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;,
        Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;
    }
.end annotation


# instance fields
.field private handler:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

.field public isComposing:Z

.field private mIdleTimeOut:J

.field private mTypingListener:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->handler:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->mIdleTimeOut:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->mTypingListener:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;

    return-object v0
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->mIdleTimeOut:J

    .line 46
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;-><init>(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->handler:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->isComposing:Z

    .line 67
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v0

    .line 68
    .local v0, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v1, "Failed to set composing idle timeout since settingsmanager is not available!"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 70
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->mIdleTimeOut:J

    .line 74
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->mTypingListener:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;

    .line 66
    return-void

    .line 72
    :cond_0
    invoke-interface {v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->getComposingTimeout()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->mIdleTimeOut:J

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->hasActivity()V

    .line 187
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->editTextNowEmpty()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 199
    return-void
.end method

.method public editTextNowEmpty()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->handler:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->sendEmptyMessage(I)Z

    .line 153
    return-void
.end method

.method public hasActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 162
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->isComposing:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->handler:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->sendEmptyMessage(I)Z

    .line 165
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->isComposing:Z

    .line 160
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->handler:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public hasNoActivity()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->isComposing:Z

    .line 175
    return-void
.end method

.method public messageWasSent()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->handler:Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 203
    return-void
.end method
