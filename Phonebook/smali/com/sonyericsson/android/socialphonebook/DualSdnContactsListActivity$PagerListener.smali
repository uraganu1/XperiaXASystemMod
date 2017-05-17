.class public Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$PagerListener;
.super Ljava/lang/Object;
.source "DualSdnContactsListActivity.java"

# interfaces
.implements Lcom/android/contacts/util/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$PagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 233
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 239
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->fromInt(I)Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    move-result-object v0

    .line 240
    .local v0, "selectedTab":Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$PagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;)V

    .line 238
    return-void
.end method
