.class public final enum Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
.super Ljava/lang/Enum;
.source "NotificationManagerApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum CLASS_0_MESSAGE_RECEIVED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum DELIVERY_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum DOWNLOAD_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum SENDING_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum SIM_2_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum SMS_REJECTED_MEMORY_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field public static final enum SWITCH_DEFAULT_SMS_APP_REMINDER:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;


# instance fields
.field private final mAggregate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "RECEIVED_MESSAGE"

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 39
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 41
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "SENDING_FAILED"

    invoke-direct {v0, v1, v4, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 44
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SENDING_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 46
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "JOYN_FAILED"

    invoke-direct {v0, v1, v5, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 49
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 51
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "DELIVERY_FAILED"

    invoke-direct {v0, v1, v6, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 54
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 56
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "DOWNLOAD_FAILED"

    invoke-direct {v0, v1, v7, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 59
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DOWNLOAD_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 61
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "SIM_1_FULL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 64
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 66
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "SIM_2_FULL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 69
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_2_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 71
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "SMS_REJECTED_MEMORY_FULL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 74
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SMS_REJECTED_MEMORY_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 76
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "CLASS_0_MESSAGE_RECEIVED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 79
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->CLASS_0_MESSAGE_RECEIVED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 81
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const-string/jumbo v1, "SWITCH_DEFAULT_SMS_APP_REMINDER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;-><init>(Ljava/lang/String;IZ)V

    .line 84
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SWITCH_DEFAULT_SMS_APP_REMINDER:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SENDING_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DOWNLOAD_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_2_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SMS_REJECTED_MEMORY_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->CLASS_0_MESSAGE_RECEIVED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SWITCH_DEFAULT_SMS_APP_REMINDER:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->$VALUES:[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "aggregate"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->mAggregate:Z

    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->$VALUES:[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    return-object v0
.end method


# virtual methods
.method public isAggregate()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->mAggregate:Z

    return v0
.end method
