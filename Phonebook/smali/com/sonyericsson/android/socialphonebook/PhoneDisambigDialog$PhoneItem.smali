.class Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;
.super Ljava/lang/Object;
.source "PhoneDisambigDialog.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/socialphonebook/Collapser$Collapsible",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;",
        ">;"
    }
.end annotation


# instance fields
.field id:J

.field phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;
    .param p2, "newPhoneNumber"    # Ljava/lang/String;
    .param p3, "newId"    # J

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->this$0:Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 179
    iput-wide p3, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->id:J

    .line 177
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;)V
    .locals 0
    .param p1, "phoneItem"    # Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;

    .prologue
    .line 182
    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1, "phoneItem"    # Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;

    .end local p1    # "phoneItem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->collapseWith(Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;)V

    return-void
.end method

.method public shouldCollapseWith(Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;)Z
    .locals 3
    .param p1, "phoneItem"    # Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->this$0:Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;)Landroid/content/Context;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 187
    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "phoneItem"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;

    .end local p1    # "phoneItem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->shouldCollapseWith(Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method
