.class Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$1;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->-set1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;I)I

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->-set0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;I)I

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;->onChange()V

    .line 198
    :cond_0
    return-void
.end method
