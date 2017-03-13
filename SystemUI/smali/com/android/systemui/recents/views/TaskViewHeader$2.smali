.class Lcom/android/systemui/recents/views/TaskViewHeader$2;
.super Ljava/lang/Object;
.source "TaskViewHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskViewHeader;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$2;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$2;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLayersDisabled:Z

    .line 320
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$2;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$2;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayerType(ILandroid/graphics/Paint;)V

    .line 318
    return-void
.end method
