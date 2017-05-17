.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApiConnectionStatusListener"
.end annotation


# static fields
.field private static synthetic -com_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues:[I


# instance fields
.field private mIsRcsConfigured:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method private static synthetic -getcom_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->-com_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->-com_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->values()[Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->-com_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 4164
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4165
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->mIsRcsConfigured:Z

    .line 4164
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    return-void
.end method


# virtual methods
.method public onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 3
    .param p1, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p2, "imApisConnectionsStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 4171
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->-getcom_sonymobile_jms_environment_ImEnvironmentApi$ConnectionStatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4180
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    .line 4182
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4183
    const-string/jumbo v1, "New IsRcsConfigured: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 4184
    const-string/jumbo v2, ", old IsRcsConfigured: "

    .line 4183
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 4184
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->mIsRcsConfigured:Z

    .line 4183
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 4186
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->mIsRcsConfigured:Z

    if-ne v0, v1, :cond_1

    .line 4187
    return-void

    .line 4174
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    .local v0, "isRcsConfigured":Z
    goto :goto_0

    .line 4177
    .end local v0    # "isRcsConfigured":Z
    :pswitch_1
    const/4 v0, 0x0

    .line 4178
    .local v0, "isRcsConfigured":Z
    goto :goto_0

    .line 4189
    .end local v0    # "isRcsConfigured":Z
    :cond_1
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->mIsRcsConfigured:Z

    .line 4190
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->mIsRcsConfigured:Z

    if-eqz v1, :cond_2

    .line 4191
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap23(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 4195
    :goto_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 4169
    return-void

    .line 4193
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap34(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    goto :goto_1

    .line 4171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
