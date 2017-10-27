LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_LDLIBS := -lm -llog 
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE := webrtc
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../webrtc/
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../webrtc/codec
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../webrtc/common_audio/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../webrtc/common_audio/signal_processing/include/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../webrtc/modules/audio_coding/codecs/isac/main/include/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../

LOCAL_CPPFLAGS := -O2 -std=c++11
LOCAL_CFLAGS := -O2 -D__STDC_CONSTANT_MACROS -D__STDINT_LIMITS -DWEBRTC_POSIX -DWEBRTC_APM_DEBUG_DUMP=0 -DWEBRTC_NS_FLOAT -DWEBRTC_INTELLIGIBILITY_ENHANCER=1 -DWEBRTC_ANDROID 

LOCAL_SRC_FILES :=	../../webrtc/common_audio/channel_buffer.cc \
../../webrtc/common_audio/sparse_fir_filter.cc \
../../webrtc/common_audio/ring_buffer.c \
../../webrtc/common_audio/real_fourier_ooura.cc \
../../webrtc/common_audio/vad/vad.cc \
../../webrtc/common_audio/vad/vad_filterbank.c \
../../webrtc/common_audio/vad/vad_gmm.c \
../../webrtc/common_audio/vad/vad_sp.c \
../../webrtc/common_audio/vad/vad_core.c \
../../webrtc/common_audio/vad/webrtc_vad.c \
../../webrtc/common_audio/audio_ring_buffer.cc \
../../webrtc/common_audio/fft4g.c \
../../webrtc/common_audio/blocker.cc \
../../webrtc/common_audio/wav_header.cc \
../../webrtc/common_audio/audio_converter.cc \
../../webrtc/common_audio/audio_util.cc \
../../webrtc/common_audio/wav_file.cc \
../../webrtc/common_audio/smoothing_filter.cc \
../../webrtc/common_audio/lapped_transform.cc \
../../webrtc/common_audio/real_fourier.cc \
../../webrtc/common_audio/window_generator.cc \
../../webrtc/common_audio/fir_filter.cc \
../../webrtc/common_audio/resampler/push_sinc_resampler.cc \
../../webrtc/common_audio/resampler/sinc_resampler.cc \
../../webrtc/common_audio/resampler/push_resampler.cc \
../../webrtc/common_audio/resampler/sinusoidal_linear_chirp_source.cc \
../../webrtc/common_audio/resampler/resampler.cc \
../../webrtc/common_audio/signal_processing/complex_fft.c \
../../webrtc/common_audio/signal_processing/resample_48khz.c \
../../webrtc/common_audio/signal_processing/resample_by_2_internal.c \
../../webrtc/common_audio/signal_processing/levinson_durbin.c \
../../webrtc/common_audio/signal_processing/dot_product_with_scale.cc \
../../webrtc/common_audio/signal_processing/cross_correlation.c \
../../webrtc/common_audio/signal_processing/filter_ar_fast_q12.c \
../../webrtc/common_audio/signal_processing/vector_scaling_operations.c \
../../webrtc/common_audio/signal_processing/downsample_fast.c \
../../webrtc/common_audio/signal_processing/refl_coef_to_lpc.c \
../../webrtc/common_audio/signal_processing/ilbc_specific_functions.c \
../../webrtc/common_audio/signal_processing/real_fft.c \
../../webrtc/common_audio/signal_processing/resample.c \
../../webrtc/common_audio/signal_processing/spl_sqrt.c \
../../webrtc/common_audio/signal_processing/auto_correlation.c \
../../webrtc/common_audio/signal_processing/spl_init.c \
../../webrtc/common_audio/signal_processing/division_operations.c \
../../webrtc/common_audio/signal_processing/get_scaling_square.c \
../../webrtc/common_audio/signal_processing/min_max_operations.c \
../../webrtc/common_audio/signal_processing/spl_sqrt_floor.c \
../../webrtc/common_audio/signal_processing/auto_corr_to_refl_coef.c \
../../webrtc/common_audio/signal_processing/spl_inl.c \
../../webrtc/common_audio/signal_processing/filter_ar.c \
../../webrtc/common_audio/signal_processing/resample_by_2.c \
../../webrtc/common_audio/signal_processing/resample_fractional.c \
../../webrtc/common_audio/signal_processing/energy.c \
../../webrtc/common_audio/signal_processing/get_hanning_window.c \
../../webrtc/common_audio/signal_processing/sqrt_of_one_minus_x_squared.c \
../../webrtc/common_audio/signal_processing/randomization_functions.c \
../../webrtc/common_audio/signal_processing/complex_bit_reverse.c \
../../webrtc/common_audio/signal_processing/splitting_filter.c \
../../webrtc/common_audio/signal_processing/filter_ma_fast_q12.c \
../../webrtc/common_audio/signal_processing/copy_set_operations.c \
../../webrtc/common_audio/signal_processing/lpc_to_refl_coef.c \
../../webrtc/modules/audio_processing/typing_detection.cc \
../../webrtc/modules/audio_processing/vad/pole_zero_filter.cc \
../../webrtc/modules/audio_processing/vad/voice_activity_detector.cc \
../../webrtc/modules/audio_processing/vad/pitch_internal.cc \
../../webrtc/modules/audio_processing/vad/standalone_vad.cc \
../../webrtc/modules/audio_processing/vad/vad_circular_buffer.cc \
../../webrtc/modules/audio_processing/vad/gmm.cc \
../../webrtc/modules/audio_processing/vad/vad_audio_proc.cc \
../../webrtc/modules/audio_processing/vad/pitch_based_vad.cc \
../../webrtc/modules/audio_processing/rms_level.cc \
../../webrtc/modules/audio_processing/level_estimator_impl.cc \
../../webrtc/modules/audio_processing/agc/utility.cc \
../../webrtc/modules/audio_processing/agc/agc.cc \
../../webrtc/modules/audio_processing/agc/loudness_histogram.cc \
../../webrtc/modules/audio_processing/agc/legacy/digital_agc.c \
../../webrtc/modules/audio_processing/agc/legacy/analog_agc.c \
../../webrtc/modules/audio_processing/agc/agc_manager_direct.cc \
../../webrtc/modules/audio_processing/beamformer/nonlinear_beamformer.cc \
../../webrtc/modules/audio_processing/beamformer/array_util.cc \
../../webrtc/modules/audio_processing/beamformer/covariance_matrix_generator.cc \
../../webrtc/modules/audio_processing/aecm/echo_control_mobile.cc \
../../webrtc/modules/audio_processing/aecm/aecm_core_c.cc \
../../webrtc/modules/audio_processing/aecm/aecm_core.cc \
../../webrtc/modules/audio_processing/aec/aec_resampler.cc \
../../webrtc/modules/audio_processing/aec/echo_cancellation.cc \
../../webrtc/modules/audio_processing/aec/aec_core.cc \
../../webrtc/modules/audio_processing/low_cut_filter.cc \
../../webrtc/modules/audio_processing/audio_buffer.cc \
../../webrtc/modules/audio_processing/transient/wpd_tree.cc \
../../webrtc/modules/audio_processing/transient/wpd_node.cc \
../../webrtc/modules/audio_processing/transient/moving_moments.cc \
../../webrtc/modules/audio_processing/transient/file_utils.cc \
../../webrtc/modules/audio_processing/transient/transient_detector.cc \
../../webrtc/modules/audio_processing/transient/transient_suppressor.cc \
../../webrtc/modules/audio_processing/splitting_filter.cc \
../../webrtc/modules/audio_processing/gain_control_impl.cc \
../../webrtc/modules/audio_processing/voice_detection_impl.cc \
../../webrtc/modules/audio_processing/echo_control_mobile_impl.cc \
../../webrtc/modules/audio_processing/residual_echo_detector.cc \
../../webrtc/modules/audio_processing/echo_detector/moving_max.cc \
../../webrtc/modules/audio_processing/echo_detector/mean_variance_estimator.cc \
../../webrtc/modules/audio_processing/echo_detector/normalized_covariance_estimator.cc \
../../webrtc/modules/audio_processing/echo_detector/circular_buffer.cc \
../../webrtc/modules/audio_processing/logging/apm_data_dumper.cc \
../../webrtc/modules/audio_processing/ns/ns_core.c \
../../webrtc/modules/audio_processing/ns/nsx_core.c \
../../webrtc/modules/audio_processing/ns/noise_suppression.c \
../../webrtc/modules/audio_processing/ns/noise_suppression_x.c \
../../webrtc/modules/audio_processing/ns/nsx_core_c.c \
../../webrtc/modules/audio_processing/agc2/gain_controller2.cc \
../../webrtc/modules/audio_processing/agc2/digital_gain_applier.cc \
../../webrtc/modules/audio_processing/aec3/decimator_by_4.cc \
../../webrtc/modules/audio_processing/aec3/echo_canceller3.cc \
../../webrtc/modules/audio_processing/aec3/render_delay_buffer.cc \
../../webrtc/modules/audio_processing/aec3/echo_remover.cc \
../../webrtc/modules/audio_processing/aec3/frame_blocker.cc \
../../webrtc/modules/audio_processing/aec3/render_delay_controller.cc \
../../webrtc/modules/audio_processing/aec3/matched_filter.cc \
../../webrtc/modules/audio_processing/aec3/block_processor.cc \
../../webrtc/modules/audio_processing/aec3/cascaded_biquad_filter.cc \
../../webrtc/modules/audio_processing/aec3/echo_path_delay_estimator.cc \
../../webrtc/modules/audio_processing/aec3/matched_filter_lag_aggregator.cc \
../../webrtc/modules/audio_processing/aec3/block_processor_metrics.cc \
../../webrtc/modules/audio_processing/aec3/downsampled_render_buffer.cc \
../../webrtc/modules/audio_processing/aec3/render_buffer.cc \
../../webrtc/modules/audio_processing/aec3/output_selector.cc \
../../webrtc/modules/audio_processing/aec3/suppression_filter.cc \
../../webrtc/modules/audio_processing/aec3/comfort_noise_generator.cc \
../../webrtc/modules/audio_processing/aec3/subtractor.cc \
../../webrtc/modules/audio_processing/aec3/render_signal_analyzer.cc \
../../webrtc/modules/audio_processing/aec3/aec_state.cc \
../../webrtc/modules/audio_processing/aec3/adaptive_fir_filter.cc \
../../webrtc/modules/audio_processing/aec3/aec3_common.cc \
../../webrtc/modules/audio_processing/aec3/aec3_fft.cc \
../../webrtc/modules/audio_processing/aec3/block_framer.cc \
../../webrtc/modules/audio_processing/aec3/erl_estimator.cc \
../../webrtc/modules/audio_processing/aec3/main_filter_update_gain.cc \
../../webrtc/modules/audio_processing/aec3/echo_remover_metrics.cc \
../../webrtc/modules/audio_processing/aec3/residual_echo_estimator.cc \
../../webrtc/modules/audio_processing/aec3/suppression_gain.cc \
../../webrtc/modules/audio_processing/aec3/erle_estimator.cc \
../../webrtc/modules/audio_processing/aec3/shadow_filter_update_gain.cc \
../../webrtc/modules/audio_processing/aec3/echo_path_variability.cc \
../../webrtc/modules/audio_processing/aec3/render_delay_controller_metrics.cc \
../../webrtc/modules/audio_processing/gain_control_for_experimental_agc.cc \
../../webrtc/modules/audio_processing/echo_cancellation_impl.cc \
../../webrtc/modules/audio_processing/three_band_filter_bank.cc \
../../webrtc/modules/audio_processing/include/config.cc \
../../webrtc/modules/audio_processing/include/audio_processing.cc \
../../webrtc/modules/audio_processing/include/aec_dump.cc \
../../webrtc/modules/audio_processing/noise_suppression_impl.cc \
../../webrtc/modules/audio_processing/audio_processing_impl.cc \
../../webrtc/modules/audio_processing/intelligibility/intelligibility_utils.cc \
../../webrtc/modules/audio_processing/intelligibility/intelligibility_enhancer.cc \
../../webrtc/modules/audio_processing/utility/delay_estimator_wrapper.cc \
../../webrtc/modules/audio_processing/utility/delay_estimator.cc \
../../webrtc/modules/audio_processing/utility/block_mean_calculator.cc \
../../webrtc/modules/audio_processing/utility/ooura_fft.cc \
../../webrtc/modules/audio_processing/level_controller/gain_applier.cc \
../../webrtc/modules/audio_processing/level_controller/saturating_gain_estimator.cc \
../../webrtc/modules/audio_processing/level_controller/gain_selector.cc \
../../webrtc/modules/audio_processing/level_controller/noise_level_estimator.cc \
../../webrtc/modules/audio_processing/level_controller/biquad_filter.cc \
../../webrtc/modules/audio_processing/level_controller/level_controller.cc \
../../webrtc/modules/audio_processing/level_controller/down_sampler.cc \
../../webrtc/modules/audio_processing/level_controller/noise_spectrum_estimator.cc \
../../webrtc/modules/audio_processing/level_controller/peak_level_estimator.cc \
../../webrtc/modules/audio_processing/level_controller/signal_classifier.cc \
../../webrtc/api/audio_codecs/audio_decoder.cc \
../../webrtc/api/audio_codecs/audio_encoder.cc \
../../webrtc/api/audio_codecs/audio_format.cc \
../../webrtc/modules/audio_coding/codecs/isac/locked_bandwidth_info.cc \
../../webrtc/modules/audio_coding/codecs/isac/main/source/arith_routines.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/arith_routines_hist.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/arith_routines_logist.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/audio_decoder_isac.cc \
../../webrtc/modules/audio_coding/codecs/isac/main/source/audio_encoder_isac.cc \
../../webrtc/modules/audio_coding/codecs/isac/main/source/bandwidth_estimator.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/crc.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/decode_bwe.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/decode.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/encode.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/encode_lpc_swb.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/entropy_coding.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/fft.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/filterbanks.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/filterbank_tables.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/filter_functions.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/intialize.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/isac.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/lattice.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/lpc_analysis.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/lpc_gain_swb_tables.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/lpc_shape_swb12_tables.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/lpc_shape_swb16_tables.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/lpc_tables.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/pitch_estimator.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/pitch_filter.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/pitch_gain_tables.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/pitch_lag_tables.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/spectrum_ar_model_tables.c \
../../webrtc/modules/audio_coding/codecs/isac/main/source/transform.c \
../../webrtc/modules/audio_coding/codecs/legacy_encoded_audio_frame.cc \
../../webrtc/system_wrappers/source/aligned_malloc.cc \
../../webrtc/system_wrappers/source/cpu_features.cc \
../../webrtc/system_wrappers/source/file_impl.cc \
../../webrtc/system_wrappers/source/metrics_default.cc \
../../webrtc/system_wrappers/source/rw_lock_posix.cc \
../../webrtc/rtc_base/bitbuffer.cc \
../../webrtc/rtc_base/checks.cc \
../../webrtc/rtc_base/criticalsection.cc \
../../webrtc/rtc_base/event.cc \
../../webrtc/rtc_base/event_tracer.cc \
../../webrtc/rtc_base/logging.cc \
../../webrtc/rtc_base/platform_file.cc \
../../webrtc/rtc_base/platform_thread.cc \
../../webrtc/rtc_base/race_checker.cc \
../../webrtc/rtc_base/stringencode.cc \
../../webrtc/rtc_base/thread_checker_impl.cc \
../../webrtc/rtc_base/timeutils.cc \
../../webrtc/rtc_base/string_to_number.cc \
../../webrtc/common_types.cc \
../../webrtc/codec/interf_dec.c \
../../webrtc/codec/interf_enc.c \
../../webrtc/codec/sp_dec.c \
../../webrtc/codec/sp_enc.c \
../../webrtc/webrtc.cc \
../../webrtc/common_audio/fir_filter_sse.cc \
../../webrtc/common_audio/resampler/sinc_resampler_sse.cc \
../../webrtc/modules/audio_processing/utility/ooura_fft_sse2.cc \
../../webrtc/modules/audio_processing/aec/aec_core_sse2.cc \


include $(BUILD_SHARED_LIBRARY)