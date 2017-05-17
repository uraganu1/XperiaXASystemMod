.class public interface abstract Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
.super Ljava/lang/Object;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncQueryListener"
.end annotation


# virtual methods
.method public abstract onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end method

.method public abstract onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V
.end method
