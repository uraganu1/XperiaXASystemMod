.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateOverflowContainerVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field final synthetic val$newVisibility:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p2, "val$newVisibility"    # I

    .prologue
    .line 2638
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;->val$newVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;->val$newVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    .line 2642
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setWillBeGone(Z)V

    .line 2643
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2644
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2640
    return-void
.end method
