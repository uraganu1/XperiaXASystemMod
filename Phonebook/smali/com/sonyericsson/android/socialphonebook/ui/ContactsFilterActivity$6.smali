.class Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;
.super Ljava/lang/Object;
.source "ContactsFilterActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

.field final synthetic val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

.field final synthetic val$syncMode:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ILcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
    .param p2, "val$child"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .param p3, "val$syncMode"    # I
    .param p4, "val$account"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->val$syncMode:I

    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 1161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->val$syncMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->setShouldSync(Z)V

    .line 1166
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 1167
    return v2

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;->val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->setShouldSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;Z)V

    goto :goto_0
.end method
