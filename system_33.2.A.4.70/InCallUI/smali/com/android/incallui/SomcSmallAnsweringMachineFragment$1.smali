.class Lcom/android/incallui/SomcSmallAnsweringMachineFragment$1;
.super Ljava/lang/Object;
.source "SomcSmallAnsweringMachineFragment.java"

# interfaces
.implements Lcom/android/incallui/SomcIncomingCallAnswerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcSmallAnsweringMachineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcSmallAnsweringMachineFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcSmallAnsweringMachineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment$1;->this$0:Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswer(ILandroid/content/Context;)V
    .locals 1
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment$1;->this$0:Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->onAnswer(ILandroid/content/Context;)V

    .line 32
    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment$1;->this$0:Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->onDecline(Landroid/content/Context;)V

    .line 37
    return-void
.end method
