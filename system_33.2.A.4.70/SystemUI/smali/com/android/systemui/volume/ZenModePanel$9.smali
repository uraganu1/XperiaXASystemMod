.class Lcom/android/systemui/volume/ZenModePanel$9;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;

.field final synthetic val$row:Landroid/view/View;

.field final synthetic val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p2, "val$row"    # Landroid/view/View;
    .param p3, "val$tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel$9;->val$row:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/volume/ZenModePanel$9;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$9;->val$row:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$9;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/volume/ZenModePanel;->-wrap9(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V

    .line 702
    return-void
.end method
