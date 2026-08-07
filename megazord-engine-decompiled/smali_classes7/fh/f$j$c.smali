.class public Lfh/f$j$c;
.super LYg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh/f$j;->n(Lfh/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lfh/l;

.field public final synthetic d:Lfh/f$j;


# direct methods
.method public varargs constructor <init>(Lfh/f$j;Ljava/lang/String;[Ljava/lang/Object;Lfh/l;)V
    .locals 0

    iput-object p1, p0, Lfh/f$j$c;->d:Lfh/f$j;

    iput-object p4, p0, Lfh/f$j$c;->c:Lfh/l;

    invoke-direct {p0, p2, p3}, LYg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lfh/f$j$c;->d:Lfh/f$j;

    iget-object v0, v0, Lfh/f$j;->d:Lfh/f;

    iget-object v0, v0, Lfh/f;->s:Lfh/i;

    iget-object v1, p0, Lfh/f$j$c;->c:Lfh/l;

    invoke-virtual {v0, v1}, Lfh/i;->a(Lfh/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lfh/f$j$c;->d:Lfh/f$j;

    iget-object v0, v0, Lfh/f$j;->d:Lfh/f;

    invoke-static {v0}, Lfh/f;->a(Lfh/f;)V

    :goto_0
    return-void
.end method
