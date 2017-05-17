.class Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;
.super Ljava/lang/Object;
.source "ContactsFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->handleRemoveSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

.field final synthetic val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
    .param p2, "val$account"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .param p3, "val$child"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;->val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUngrouped:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->setShouldSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;Z)V

    .line 1138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;->val$account:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;->val$child:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->setShouldSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;Z)V

    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 1135
    return-void
.end method
