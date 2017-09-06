.class Lcom/android/incallui/SomcAmAnimationView$1;
.super Ljava/lang/Object;
.source "SomcAmAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcAmAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcAmAnimationView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcAmAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcAmAnimationView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/incallui/SomcAmAnimationView$1;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView$1;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/SomcAmAnimationView;->invalidate()V

    .line 61
    return-void
.end method
