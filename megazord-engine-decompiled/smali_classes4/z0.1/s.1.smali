.class public final synthetic Lz0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/N$b;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lp0/r;


# direct methods
.method public synthetic constructor <init>(JLp0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lz0/s;->a:J

    iput-object p3, p0, Lz0/s;->b:Lp0/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Lz0/s;->a:J

    iget-object v2, p0, Lz0/s;->b:Lp0/r;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lz0/N;->o(JLp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
