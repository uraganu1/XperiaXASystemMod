.class Lcom/sonyericsson/conversations/util/ContactLookup$4;
.super Ljava/lang/Object;
.source "ContactLookup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;->getSortedStrequentContacts()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/service/chooser/ChooserTarget;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/ContactLookup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$4;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .locals 2
    .param p1, "chooserTarget"    # Landroid/service/chooser/ChooserTarget;
    .param p2, "chooserTarget2"    # Landroid/service/chooser/ChooserTarget;

    .prologue
    .line 554
    invoke-virtual {p2}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v0

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "chooserTarget"    # Ljava/lang/Object;
    .param p2, "chooserTarget2"    # Ljava/lang/Object;

    .prologue
    .line 553
    check-cast p1, Landroid/service/chooser/ChooserTarget;

    .end local p1    # "chooserTarget":Ljava/lang/Object;
    check-cast p2, Landroid/service/chooser/ChooserTarget;

    .end local p2    # "chooserTarget2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ContactLookup$4;->compare(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I

    move-result v0

    return v0
.end method
