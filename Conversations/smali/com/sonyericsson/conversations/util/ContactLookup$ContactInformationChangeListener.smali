.class public interface abstract Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;
.super Ljava/lang/Object;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactInformationChangeListener"
.end annotation


# virtual methods
.method public abstract onContactInformationChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProfileInformationChanged(Ljava/lang/String;)V
.end method
