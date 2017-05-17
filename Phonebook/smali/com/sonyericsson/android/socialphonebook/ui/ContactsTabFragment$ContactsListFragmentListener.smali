.class Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;
.super Ljava/lang/Object;
.source "ContactsTabFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsListFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;)V

    return-void
.end method


# virtual methods
.method public onContactContainerVisibilityChange(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 62
    return-void
.end method

.method public onSelectionChange(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 50
    return-void
.end method

.method public onViewContactAction(Landroid/net/Uri;)V
    .locals 5
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    move-object v2, v3

    .line 57
    check-cast v2, Landroid/graphics/Rect;

    const/4 v4, 0x4

    .line 56
    invoke-static {v0, v2, p1, v4, v3}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
