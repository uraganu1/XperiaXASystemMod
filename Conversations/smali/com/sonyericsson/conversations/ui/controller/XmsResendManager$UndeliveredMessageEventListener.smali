.class Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;
.super Ljava/lang/Object;
.source "XmsResendManager.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UndeliveredMessageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;)V

    return-void
.end method


# virtual methods
.method public onUndeliveredImUserMessagesDetected(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 2
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 86
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->shouldAlwaysResendUndeliveredMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method
