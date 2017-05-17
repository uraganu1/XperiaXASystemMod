.class synthetic Lcom/sonymobile/jms/conversation/ImConversationManager$1;
.super Ljava/lang/Object;
.source "ImConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/conversation/ImConversationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

.field static final synthetic $SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

.field static final synthetic $SwitchMap$com$sonymobile$jms$conversation$Session$InvitationState:[I

.field static final synthetic $SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

.field static final synthetic $SwitchMap$com$sonymobile$jms$message$ImUserMessage$Status:[I

.field static final synthetic $SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

.field static final synthetic $SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ManualAcceptModeForImTextConversation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3351
    invoke-static {}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->values()[Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_TOO_MANY_SESSIONS_ALLOCATED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationInvitationEventListener$ImInvitationStatus:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    .line 3311
    :goto_6
    invoke-static {}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->values()[Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    :try_start_7
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->INTEGRATED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ClientMode:[I

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->SEAMLESS:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    .line 2290
    :goto_8
    invoke-static {}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->values()[Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$message$ImUserMessage$Status:[I

    :try_start_9
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$message$ImUserMessage$Status:[I

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    .line 1594
    :goto_9
    invoke-static {}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->values()[Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

    :try_start_a
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$environment$ImEnvironmentApi$ConnectionStatus:[I

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    .line 1567
    :goto_c
    invoke-static {}, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->values()[Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ManualAcceptModeForImTextConversation:[I

    :try_start_d
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ManualAcceptModeForImTextConversation:[I

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_SEND_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ManualAcceptModeForImTextConversation:[I

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_CONVERSATION_OPEN:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$setting$ImSettingApi$ManualAcceptModeForImTextConversation:[I

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_TYPING_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    .line 1303
    :goto_f
    invoke-static {}, Lcom/sonymobile/jms/conversation/Session$InvitationState;->values()[Lcom/sonymobile/jms/conversation/Session$InvitationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$Session$InvitationState:[I

    :try_start_10
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$Session$InvitationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$Session$InvitationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/Session$InvitationState;->REJECTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    .line 366
    :goto_11
    invoke-static {}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->values()[Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    :try_start_12
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_REMOTE_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_TIMEOUT:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->CANCELLED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$1;->$SwitchMap$com$sonymobile$jms$conversation$ImConversationManager$ImConversationState:[I

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_UPLOADED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    return-void

    :catch_0
    move-exception v0

    goto :goto_1d

    :catch_1
    move-exception v0

    goto :goto_1c

    :catch_2
    move-exception v0

    goto :goto_1b

    :catch_3
    move-exception v0

    goto :goto_1a

    :catch_4
    move-exception v0

    goto :goto_19

    :catch_5
    move-exception v0

    goto :goto_18

    :catch_6
    move-exception v0

    goto :goto_17

    :catch_7
    move-exception v0

    goto :goto_16

    :catch_8
    move-exception v0

    goto :goto_15

    :catch_9
    move-exception v0

    goto :goto_14

    :catch_a
    move-exception v0

    goto/16 :goto_13

    :catch_b
    move-exception v0

    goto/16 :goto_12

    .line 1303
    :catch_c
    move-exception v0

    goto/16 :goto_11

    :catch_d
    move-exception v0

    goto/16 :goto_10

    .line 1567
    :catch_e
    move-exception v0

    goto/16 :goto_f

    :catch_f
    move-exception v0

    goto/16 :goto_e

    :catch_10
    move-exception v0

    goto/16 :goto_d

    .line 1594
    :catch_11
    move-exception v0

    goto/16 :goto_c

    :catch_12
    move-exception v0

    goto/16 :goto_b

    :catch_13
    move-exception v0

    goto/16 :goto_a

    .line 2290
    :catch_14
    move-exception v0

    goto/16 :goto_9

    .line 3311
    :catch_15
    move-exception v0

    goto/16 :goto_8

    :catch_16
    move-exception v0

    goto/16 :goto_7

    .line 3351
    :catch_17
    move-exception v0

    goto/16 :goto_6

    :catch_18
    move-exception v0

    goto/16 :goto_5

    :catch_19
    move-exception v0

    goto/16 :goto_4

    :catch_1a
    move-exception v0

    goto/16 :goto_3

    :catch_1b
    move-exception v0

    goto/16 :goto_2

    :catch_1c
    move-exception v0

    goto/16 :goto_1

    :catch_1d
    move-exception v0

    goto/16 :goto_0
.end method
