.class public Lcom/android/contacts/test/FragmentTestActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FragmentTestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/test/FragmentTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 43
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, 0x280000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    const v1, 0x7f04007e

    invoke-virtual {p0, v1}, Lcom/android/contacts/test/FragmentTestActivity;->setContentView(I)V

    .line 37
    return-void
.end method
