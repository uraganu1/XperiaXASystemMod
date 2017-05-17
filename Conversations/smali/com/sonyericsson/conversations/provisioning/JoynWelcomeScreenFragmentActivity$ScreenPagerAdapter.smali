.class Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$ScreenPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "JoynWelcomeScreenFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenPagerAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 215
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x5

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 221
    invoke-static {p1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragment;->newInstance(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
