.class Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$2;
.super Ljava/lang/Object;
.source "PickJoynContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 116
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$2;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$2;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$2;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-get1(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 118
    return-void
.end method
