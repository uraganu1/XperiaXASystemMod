.class public Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$AddTabListener;
.super Ljava/lang/Object;
.source "DualSdnContactsListActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$AddTabListener;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 247
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$AddTabListener;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;)V

    .line 252
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 257
    return-void
.end method
