.class Lcom/android/incallui/AnswerPresenter$1;
.super Ljava/lang/Object;
.source "AnswerPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AnswerPresenter;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->unbindImsService()V

    .line 90
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 110
    return-void
.end method
