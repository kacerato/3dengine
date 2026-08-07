.class public final synthetic Lz0/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/N$b;


# instance fields
.field public final synthetic a:Lz0/N;

.field public final synthetic b:Lp0/r;


# direct methods
.method public synthetic constructor <init>(Lz0/N;Lp0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/J;->a:Lz0/N;

    iput-object p2, p0, Lz0/J;->b:Lp0/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz0/J;->a:Lz0/N;

    iget-object v1, p0, Lz0/J;->b:Lp0/r;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lz0/N;->f(Lz0/N;Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
