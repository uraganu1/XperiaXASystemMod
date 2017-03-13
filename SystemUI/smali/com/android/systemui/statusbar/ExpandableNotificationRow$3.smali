.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)Landroid/view/View;

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v1, 0x7f1000cc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)Landroid/view/View;

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v1, 0x7f1000cd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)Landroid/view/View;

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    return-void
.end method
