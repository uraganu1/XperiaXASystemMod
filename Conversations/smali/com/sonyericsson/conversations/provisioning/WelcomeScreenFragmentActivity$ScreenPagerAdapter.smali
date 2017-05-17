.class Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "WelcomeScreenFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_provisioning_WelcomeScreenFragmentActivity$ScreenPagerAdapter$PagesSwitchesValues:[I


# instance fields
.field mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_provisioning_WelcomeScreenFragmentActivity$ScreenPagerAdapter$PagesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->-com_sonyericsson_conversations_provisioning_WelcomeScreenFragmentActivity$ScreenPagerAdapter$PagesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->-com_sonyericsson_conversations_provisioning_WelcomeScreenFragmentActivity$ScreenPagerAdapter$PagesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->values()[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->PAGE_ATTACHMENTS:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->PAGE_STORE:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->-com_sonyericsson_conversations_provisioning_WelcomeScreenFragmentActivity$ScreenPagerAdapter$PagesSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Z)V
    .locals 4
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "isRtl"    # Z

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->values()[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->mPages:Ljava/util/ArrayList;

    .line 316
    if-eqz p2, :cond_0

    .line 317
    invoke-static {}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->values()[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    move-result-object v1

    .line 318
    .local v1, "pages":[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 319
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->mPages:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 322
    .end local v0    # "i":I
    .end local v1    # "pages":[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->mPages:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->values()[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 313
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 329
    invoke-static {}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->-getcom_sonyericsson_conversations_provisioning_WelcomeScreenFragmentActivity$ScreenPagerAdapter$PagesSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 335
    const/4 v0, 0x0

    return-object v0

    .line 331
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenAttachmentsFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenAttachmentsFragment;-><init>()V

    return-object v0

    .line 333
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;-><init>()V

    return-object v0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
