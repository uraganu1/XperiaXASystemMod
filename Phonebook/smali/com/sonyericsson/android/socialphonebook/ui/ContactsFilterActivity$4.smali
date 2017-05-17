.class Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;
.super Ljava/lang/Object;
.source "ContactsFilterActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;I)V
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

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
    .param p2, "val$account"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .param p3, "val$child"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .param p4, "val$syncMode"    # I
    .param p5, "val$title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->val$syncMode:I

    iput-object p5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->val$title:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->val$syncMode:I

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;->val$title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->handleRemoveSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    .line 1117
    const/4 v0, 0x1

    return v0
.end method
