import { VideoCodec } from '@app/infra/entities';
import { Writable } from 'stream';

export const IMediaRepository = 'IMediaRepository';

export interface ResizeOptions {
  size: number;
}

export interface ThumbnailOptions {
  format: 'webp' | 'jpeg';
  wideGamut: boolean;
  quality: number;
}

export interface VideoStreamInfo {
  height: number;
  width: number;
  rotation: number;
  codecName?: string;
  codecType?: string;
  frameCount: number;
  isHDR: boolean;
}

export interface AudioStreamInfo {
  codecName?: string;
  codecType?: string;
}

export interface VideoFormat {
  formatName?: string;
  formatLongName?: string;
  duration: number;
}

export interface VideoInfo {
  format: VideoFormat;
  videoStreams: VideoStreamInfo[];
  audioStreams: AudioStreamInfo[];
}

export interface CropOptions {
  top: number;
  left: number;
  width: number;
  height: number;
}

export interface TranscodeOptions {
  inputOptions: string[];
  outputOptions: string[];
  twoPass: boolean;
}

export interface BitrateDistribution {
  max: number;
  target: number;
  min: number;
  unit: string;
}

export interface VideoCodecSWConfig {
  getOptions(stream: VideoStreamInfo): TranscodeOptions;
}

export interface VideoCodecHWConfig extends VideoCodecSWConfig {
  getSupportedCodecs(): Array<VideoCodec>;
}

export interface IMediaRepository {
  // image
  resize(input: string | Buffer, options: ResizeOptions): Promise<Buffer>;
  crop(input: string | Buffer, options: CropOptions): Promise<Buffer>;
  generateThumbhash(imagePath: string | Buffer): Promise<Buffer>;
  saveThumbnail(imagePath: string | Buffer, output: string, options: ThumbnailOptions): Promise<void>;

  // video
  probe(input: string): Promise<VideoInfo>;
  transcode(input: string, output: string | Writable, options: TranscodeOptions): Promise<void>;
}
