.class Lcom/google/common/util/concurrent/AbstractService$9;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic -com_google_common_util_concurrent_Service$StateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$google$common$util$concurrent$Service$State:[I

.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method private static synthetic -getcom_google_common_util_concurrent_Service$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$9;->-com_google_common_util_concurrent_Service$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$9;->-com_google_common_util_concurrent_Service$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/Service$State;->values()[Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/google/common/util/concurrent/AbstractService$9;->-com_google_common_util_concurrent_Service$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/AbstractService;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .prologue
    .line 171
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractService$9;->-getcom_google_common_util_concurrent_Service$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected from state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->-get1(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    .line 174
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->-get0(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Service failed to start."

    invoke-direct {v1, v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    .line 170
    :goto_0
    return-void

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->-get0(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Service failed while running"

    invoke-direct {v1, v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->-get0(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public running()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->-get1(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 158
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->-get1(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 164
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->-get1(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->-get0(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method
