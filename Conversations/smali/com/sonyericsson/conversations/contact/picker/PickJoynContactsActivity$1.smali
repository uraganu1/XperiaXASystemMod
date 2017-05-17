.class Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;
.super Ljava/lang/Object;
.source "PickJoynContactsActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberOfPickedChanged(II)V
    .locals 2
    .param p1, "numberOfPicked"    # I
    .param p2, "newlyAdded"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-get1(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-set1(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;I)I

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v0, p2}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-set0(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;I)I

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-get1(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-wrap0(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    return-void
.end method
