.class Lcom/android/incallui/InCallPresenter$5;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->setRcsVideoVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->-get5(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .line 444
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->-get3(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v3}, Lcom/android/incallui/InCallPresenter;->-get3(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    .line 445
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    .line 444
    invoke-interface {v0, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 441
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    :cond_0
    return-void
.end method
