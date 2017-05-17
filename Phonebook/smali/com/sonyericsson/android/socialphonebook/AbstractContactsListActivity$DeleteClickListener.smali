.class Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;
.super Ljava/lang/Object;
.source "AbstractContactsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "aDialog"    # Landroid/content/DialogInterface;
    .param p2, "aWhich"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->deleteContact()V

    .line 235
    return-void
.end method
