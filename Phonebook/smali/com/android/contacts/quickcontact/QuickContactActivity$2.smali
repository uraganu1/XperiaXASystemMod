.class Lcom/android/contacts/quickcontact/QuickContactActivity$2;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapse(I)V
    .locals 1
    .param p1, "heightDelta"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get18(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->prepareForShrinkingScrollChild(I)V

    .line 485
    return-void
.end method

.method public onExpand(I)V
    .locals 1
    .param p1, "heightDelta"    # I

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get18(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->prepareForExpandingScrollChild()V

    .line 490
    return-void
.end method
