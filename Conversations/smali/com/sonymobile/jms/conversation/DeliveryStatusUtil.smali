.class Lcom/sonymobile/jms/conversation/DeliveryStatusUtil;
.super Ljava/lang/Object;
.source "DeliveryStatusUtil.java"


# static fields
.field private static final mDeliveryStatusReportProcessor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil;->mDeliveryStatusReportProcessor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static tryToSetDeliveryStatusDisplayedToReadMsgsWithReportRequested(Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;)V
    .locals 2
    .param p0, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .param p1, "imMessageStorageApi"    # Lcom/sonymobile/jms/message/ImMessageStorageApi;

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil;->mDeliveryStatusReportProcessor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil$1;

    invoke-direct {v1, p1, p0}, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil$1;-><init>(Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonymobile/jms/conversation/ImConversationApi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method
