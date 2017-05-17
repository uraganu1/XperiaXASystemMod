.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MMSAndSmsReceivedListener"
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 4309
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    return-void
.end method


# virtual methods
.method public onXmsReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4312
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 4313
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v2

    .line 4314
    .local v2, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->isConversationVisibile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4315
    return-void

    .line 4318
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4319
    return-void

    .line 4322
    :cond_1
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getLastOpenedConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 4323
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v3

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4311
    :cond_2
    :goto_0
    return-void

    .line 4325
    :pswitch_0
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    .line 4326
    invoke-static {p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v4

    .line 4325
    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4327
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 4328
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap38(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    goto :goto_0

    .line 4323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
