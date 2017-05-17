.class public final enum Lcom/sonymobile/jms/message/ImUserMessage$Status;
.super Ljava/lang/Enum;
.source "ImUserMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/message/ImUserMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/message/ImUserMessage$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum ABORTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field public static final enum UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "QUEUED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "UPLOADED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "TERMINATED"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "FAILED_DELIVERY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "IN_PROGRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "CANCELED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "TERMINATED_BY_REMOTE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "ABORTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ABORTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "FORBIDDEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "TIMED_OUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "DECLINED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "DECLINED_LOW_SPACE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "DECLINED_MAX_SIZE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "SENT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "RECEIVED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "MISSED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "PENDING"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "DELIVERED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "REPORT_REQUESTED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "RECEIVER_NOTIFIED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "INITIATED"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "MEDIA_UPLOAD_FAILED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "MEDIA_DOWNLOAD_FAILED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "NO_CHAT_SESSION"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "MEDIA_SAVING_FAILED"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "DECLINED_MAX_FILE_SESSIONS"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "DECLINED_SPAM_MESSAGE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const-string/jumbo v1, "DECLINED_MAX_CHAT_SESSIONS"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v0, 0x20

    .line 12
    new-array v0, v0, [Lcom/sonymobile/jms/message/ImUserMessage$Status;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ABORTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->$VALUES:[Lcom/sonymobile/jms/message/ImUserMessage$Status;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->$VALUES:[Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v0
.end method
