.class final enum Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;
.super Ljava/lang/Enum;
.source "WelcomeScreenFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Pages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

.field public static final enum PAGE_ATTACHMENTS:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

.field public static final enum PAGE_STORE:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    new-instance v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    const-string/jumbo v1, "PAGE_ATTACHMENTS"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->PAGE_ATTACHMENTS:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    .line 303
    new-instance v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    const-string/jumbo v1, "PAGE_STORE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->PAGE_STORE:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    .line 301
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    sget-object v1, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->PAGE_ATTACHMENTS:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->PAGE_STORE:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->$VALUES:[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 301
    const-class v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;->$VALUES:[Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter$Pages;

    return-object v0
.end method
