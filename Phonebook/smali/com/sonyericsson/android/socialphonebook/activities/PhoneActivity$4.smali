.class Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$4;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;Z)Z

    .line 326
    return-void
.end method
