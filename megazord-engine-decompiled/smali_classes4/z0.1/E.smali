.class public final synthetic Lz0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/N$b;


# instance fields
.field public final synthetic a:Lz0/N;


# direct methods
.method public synthetic constructor <init>(Lz0/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/E;->a:Lz0/N;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz0/E;->a:Lz0/N;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lz0/N;->k(Lz0/N;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
