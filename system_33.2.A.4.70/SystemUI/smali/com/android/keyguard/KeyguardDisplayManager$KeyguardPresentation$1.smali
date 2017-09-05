.class Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get1(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get4(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int v0, v2, v3

    .line 138
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get2(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get3(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int v1, v2, v3

    .line 140
    .local v1, "y":I
    invoke-static {}, Lcom/android/keyguard/KeyguardDisplayManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string/jumbo v2, "KeyguardDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMarginLeft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get1(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mUsableWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get4(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    const-string/jumbo v4, " , mClock.getWidth() = "

    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    const-string/jumbo v4, " and final X = "

    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string/jumbo v2, "KeyguardDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMarginTop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get2(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mUsableHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get3(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    const-string/jumbo v4, " , mClock.getHeight() = "

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    const-string/jumbo v4, " and final y = "

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 152
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method
