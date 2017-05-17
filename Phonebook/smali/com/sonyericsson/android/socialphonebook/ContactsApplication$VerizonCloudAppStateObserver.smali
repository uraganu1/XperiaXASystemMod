.class Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;
.super Landroid/database/ContentObserver;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerizonCloudAppStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ContactsApplication;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsApplication;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ContactsApplication;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsApplication;

    .line 204
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;->onChange(ZLandroid/net/Uri;)V

    .line 208
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsApplication;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ContactsApplication;)V

    .line 213
    return-void
.end method
