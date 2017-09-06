.class Lcom/android/incallui/SomcAnsweringMachinePresenter$1;
.super Ljava/lang/Object;
.source "SomcAnsweringMachinePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcAnsweringMachinePresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcAnsweringMachinePresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcAnsweringMachinePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcAnsweringMachinePresenter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter$1;->this$0:Lcom/android/incallui/SomcAnsweringMachinePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachinePresenter$1;->this$0:Lcom/android/incallui/SomcAnsweringMachinePresenter;

    invoke-virtual {v0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->updateCallTime()V

    .line 36
    return-void
.end method
