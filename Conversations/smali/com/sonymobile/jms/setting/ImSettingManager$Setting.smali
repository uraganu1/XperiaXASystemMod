.class public final enum Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
.super Ljava/lang/Enum;
.source "ImSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/setting/ImSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Setting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/setting/ImSettingManager$Setting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum CAP_VALIDITY_PERIOD:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum CLIENT_MODE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum COMPOSING_TIMEOUT:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum DEFAULT_FILE_TRANSFER_PROTOCOL:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum DEFAULT_MESSAGING_METHOD:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum DISPLAY_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum FILE_RESIZE_OPTION:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum FT_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum FT_HTTP_CAP_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum IM_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum IM_SERVICE_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum IS_DISPLAYED_NOTIFICATION_ENABLED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum IS_FILE_TRANSFERS_AUTO_ACCEPTED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum IS_FILE_TRANSFERS_AUTO_ACCEPTED_WHILE_ROAMING:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum IS_FILE_TRANSFER_AUTO_ACCEPT_MODE_CHANGEABLE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum IS_GROUP_CHAT_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum IS_STORE_FORWARD_WARNING_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum KEY_IM_CONFIGURED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum MAX_FILE_TRANSFER_SESSIONS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum MAX_FILE_TRANSFER_SIZE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum MAX_GROUP_CHAT_PARTICIPANTS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum MAX_GROUP_CONVERSATION_MESSAGE_LENGTH:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum MAX_ONE2ONE_CONVERSATION_MESSAGE_LENGTH:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum MESSAGE_DELIVERY_TIMEOUT:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum USER_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

.field public static final enum WARNING_MAX_FILE_TRANSFER_SIZE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "MAX_FILE_TRANSFER_SIZE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_FILE_TRANSFER_SIZE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 57
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "WARNING_MAX_FILE_TRANSFER_SIZE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->WARNING_MAX_FILE_TRANSFER_SIZE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 58
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "COMPOSING_TIMEOUT"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->COMPOSING_TIMEOUT:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 59
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "MAX_GROUP_CHAT_PARTICIPANTS"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_GROUP_CHAT_PARTICIPANTS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 60
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "MAX_ONE2ONE_CONVERSATION_MESSAGE_LENGTH"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_ONE2ONE_CONVERSATION_MESSAGE_LENGTH:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 61
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "MAX_GROUP_CONVERSATION_MESSAGE_LENGTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_GROUP_CONVERSATION_MESSAGE_LENGTH:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 62
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "IM_ALWAYS_ON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IM_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 63
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "FT_ALWAYS_ON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FT_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 64
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "FT_HTTP_CAP_ALWAYS_ON"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FT_HTTP_CAP_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 65
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "IS_STORE_FORWARD_WARNING_ACTIVATED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_STORE_FORWARD_WARNING_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 66
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "USER_NAME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->USER_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 67
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "DISPLAY_NAME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DISPLAY_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 68
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "IS_FILE_TRANSFER_AUTO_ACCEPT_MODE_CHANGEABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFER_AUTO_ACCEPT_MODE_CHANGEABLE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 69
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "IS_FILE_TRANSFERS_AUTO_ACCEPTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFERS_AUTO_ACCEPTED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 70
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "IS_FILE_TRANSFERS_AUTO_ACCEPTED_WHILE_ROAMING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFERS_AUTO_ACCEPTED_WHILE_ROAMING:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 71
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "FILE_RESIZE_OPTION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FILE_RESIZE_OPTION:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 72
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "IS_DISPLAYED_NOTIFICATION_ENABLED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_DISPLAYED_NOTIFICATION_ENABLED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 73
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "KEY_IM_CONFIGURED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->KEY_IM_CONFIGURED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 74
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "MESSAGE_DELIVERY_TIMEOUT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MESSAGE_DELIVERY_TIMEOUT:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 75
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "MAX_CHAT_SESSIONS"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 76
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "MAX_FILE_TRANSFER_SESSIONS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_FILE_TRANSFER_SESSIONS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 77
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "CLIENT_MODE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->CLIENT_MODE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 78
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "IS_GROUP_CHAT_ACTIVATED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_GROUP_CHAT_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 79
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "CAP_VALIDITY_PERIOD"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->CAP_VALIDITY_PERIOD:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 80
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "DEFAULT_FILE_TRANSFER_PROTOCOL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DEFAULT_FILE_TRANSFER_PROTOCOL:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 81
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "DEFAULT_MESSAGING_METHOD"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DEFAULT_MESSAGING_METHOD:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 82
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const-string/jumbo v1, "IM_SERVICE_ACTIVATED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IM_SERVICE_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    const/16 v0, 0x1b

    .line 55
    new-array v0, v0, [Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_FILE_TRANSFER_SIZE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->WARNING_MAX_FILE_TRANSFER_SIZE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->COMPOSING_TIMEOUT:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_GROUP_CHAT_PARTICIPANTS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_ONE2ONE_CONVERSATION_MESSAGE_LENGTH:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_GROUP_CONVERSATION_MESSAGE_LENGTH:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IM_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FT_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FT_HTTP_CAP_ALWAYS_ON:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_STORE_FORWARD_WARNING_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->USER_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DISPLAY_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFER_AUTO_ACCEPT_MODE_CHANGEABLE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFERS_AUTO_ACCEPTED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_FILE_TRANSFERS_AUTO_ACCEPTED_WHILE_ROAMING:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->FILE_RESIZE_OPTION:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_DISPLAYED_NOTIFICATION_ENABLED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->KEY_IM_CONFIGURED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MESSAGE_DELIVERY_TIMEOUT:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->MAX_FILE_TRANSFER_SESSIONS:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->CLIENT_MODE:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IS_GROUP_CHAT_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->CAP_VALIDITY_PERIOD:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DEFAULT_FILE_TRANSFER_PROTOCOL:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DEFAULT_MESSAGING_METHOD:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->IM_SERVICE_ACTIVATED:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    .line 55
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    return-object v0
.end method
