.class Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode$1;
.super Ljava/lang/Object;
.source "BasePickMode.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getPredicateForFiltering()Lcom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 301
    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode$1;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method
